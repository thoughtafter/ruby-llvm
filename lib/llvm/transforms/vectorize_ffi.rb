# Generated by ffi_gen. Please do not change this file by hand.

require 'ffi'

module LLVM::C
  extend FFI::Library
  ffi_lib ["libLLVM-14.so.1", "libLLVM.so.14", "LLVM-14"]

  def self.attach_function(name, *_)
    begin; super; rescue FFI::NotFoundError => e
      (class << self; self; end).class_eval { define_method(name) { |*_| raise e } }
    end
  end

  # DEPRECATED - Use LLVMAddSLPVectorizePass
  #
  # @method add_bb_vectorize_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm
  # @return [nil]
  # @scope class
  attach_function :add_bb_vectorize_pass, :LLVMAddBBVectorizePass, [:pointer], :void

  # See llvm::createLoopVectorizePass function.
  #
  # @method add_loop_vectorize_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm
  # @return [nil]
  # @scope class
  attach_function :add_loop_vectorize_pass, :LLVMAddLoopVectorizePass, [:pointer], :void

  # See llvm::createSLPVectorizerPass function.
  #
  # @method add_slp_vectorize_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm
  # @return [nil]
  # @scope class
  attach_function :add_slp_vectorize_pass, :LLVMAddSLPVectorizePass, [:pointer], :void
end
