
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct codegen_context {int stack_size; } ;


 int BPF_PPC_NVR_MIN ;
 int BPF_PPC_STACKFRAME ;
 int BUG () ;
 scalar_t__ bpf_has_stack_frame (struct codegen_context*) ;
 int pr_err (char*) ;

__attribute__((used)) static int bpf_jit_stack_offsetof(struct codegen_context *ctx, int reg)
{
 if (reg >= BPF_PPC_NVR_MIN && reg < 32)
  return (bpf_has_stack_frame(ctx) ?
   (BPF_PPC_STACKFRAME + ctx->stack_size) : 0)
    - (8 * (32 - reg));

 pr_err("BPF JIT is asking about unknown registers");
 BUG();
}
