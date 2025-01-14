
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct codegen_context {int stack_size; } ;


 int BPF_PPC_STACK_SAVE ;
 int STACK_FRAME_MIN_SIZE ;
 scalar_t__ bpf_has_stack_frame (struct codegen_context*) ;

__attribute__((used)) static int bpf_jit_stack_local(struct codegen_context *ctx)
{
 if (bpf_has_stack_frame(ctx))
  return STACK_FRAME_MIN_SIZE + ctx->stack_size;
 else
  return -(BPF_PPC_STACK_SAVE + 16);
}
