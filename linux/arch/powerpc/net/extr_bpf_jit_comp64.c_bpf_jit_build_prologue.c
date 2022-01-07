
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct codegen_context {int seen; int stack_size; } ;


 int BPF_PPC_STACKFRAME ;
 int BPF_PPC_STACK_SAVE ;
 int BPF_REG_10 ;
 int BPF_REG_6 ;
 size_t BPF_REG_FP ;
 int EMIT (int) ;
 int PPC_ADDI (int ,int,scalar_t__) ;
 int PPC_BPF_STL (int ,int,int) ;
 int PPC_BPF_STLU (int,int,int ) ;
 int PPC_INST_MFLR ;
 int PPC_LI (int ,int ) ;
 int PPC_LR_STKOFF ;
 int PPC_NOP () ;
 int R0 ;
 int SEEN_FUNC ;
 int SEEN_TAILCALL ;
 scalar_t__ STACK_FRAME_MIN_SIZE ;
 size_t TMP_REG_1 ;
 int __PPC_RT (int ) ;
 int * b2p ;
 scalar_t__ bpf_has_stack_frame (struct codegen_context*) ;
 scalar_t__ bpf_is_seen_register (struct codegen_context*,size_t) ;
 int bpf_jit_stack_offsetof (struct codegen_context*,int ) ;

__attribute__((used)) static void bpf_jit_build_prologue(u32 *image, struct codegen_context *ctx)
{
 int i;






 if (ctx->seen & SEEN_TAILCALL) {
  PPC_LI(b2p[TMP_REG_1], 0);

  PPC_BPF_STL(b2p[TMP_REG_1], 1, -(BPF_PPC_STACK_SAVE + 8));
 } else {
  PPC_NOP();
  PPC_NOP();
 }



 if (bpf_has_stack_frame(ctx)) {




  if (ctx->seen & SEEN_FUNC) {
   EMIT(PPC_INST_MFLR | __PPC_RT(R0));
   PPC_BPF_STL(0, 1, PPC_LR_STKOFF);
  }

  PPC_BPF_STLU(1, 1, -(BPF_PPC_STACKFRAME + ctx->stack_size));
 }






 for (i = BPF_REG_6; i <= BPF_REG_10; i++)
  if (bpf_is_seen_register(ctx, i))
   PPC_BPF_STL(b2p[i], 1, bpf_jit_stack_offsetof(ctx, b2p[i]));


 if (bpf_is_seen_register(ctx, BPF_REG_FP))
  PPC_ADDI(b2p[BPF_REG_FP], 1,
    STACK_FRAME_MIN_SIZE + ctx->stack_size);
}
