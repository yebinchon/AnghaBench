
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct codegen_context {int seen; scalar_t__ stack_size; } ;


 scalar_t__ BPF_PPC_STACKFRAME ;
 int BPF_REG_10 ;
 int BPF_REG_6 ;
 int PPC_ADDI (int,int,scalar_t__) ;
 int PPC_BPF_LL (int ,int,int ) ;
 int PPC_LR_STKOFF ;
 int PPC_MTLR (int ) ;
 int SEEN_FUNC ;
 int * b2p ;
 scalar_t__ bpf_has_stack_frame (struct codegen_context*) ;
 scalar_t__ bpf_is_seen_register (struct codegen_context*,int) ;
 int bpf_jit_stack_offsetof (struct codegen_context*,int ) ;

__attribute__((used)) static void bpf_jit_emit_common_epilogue(u32 *image, struct codegen_context *ctx)
{
 int i;


 for (i = BPF_REG_6; i <= BPF_REG_10; i++)
  if (bpf_is_seen_register(ctx, i))
   PPC_BPF_LL(b2p[i], 1, bpf_jit_stack_offsetof(ctx, b2p[i]));


 if (bpf_has_stack_frame(ctx)) {
  PPC_ADDI(1, 1, BPF_PPC_STACKFRAME + ctx->stack_size);
  if (ctx->seen & SEEN_FUNC) {
   PPC_BPF_LL(0, 1, PPC_LR_STKOFF);
   PPC_MTLR(0);
  }
 }
}
