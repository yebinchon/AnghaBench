
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct jit_ctx {int idx; int stack_size; struct bpf_prog* prog; } ;
struct bpf_prog {TYPE_1__* aux; } ;
struct TYPE_2__ {int stack_depth; } ;


 int const A64_FP ;
 int const A64_LR ;
 int A64_MOV (int,int const,int ) ;
 int A64_MOVZ (int,int const,int ,int ) ;
 int A64_PUSH (int const,int const,int ) ;
 int A64_SP ;
 int A64_SUB_I (int,int ,int ,int ) ;
 size_t BPF_REG_6 ;
 size_t BPF_REG_7 ;
 size_t BPF_REG_8 ;
 size_t BPF_REG_9 ;
 size_t BPF_REG_FP ;
 int PROLOGUE_OFFSET ;
 int STACK_ALIGN (int ) ;
 size_t TCALL_CNT ;
 int * bpf2a64 ;
 int emit (int ,struct jit_ctx*) ;
 int pr_err_once (char*,int,int) ;

__attribute__((used)) static int build_prologue(struct jit_ctx *ctx, bool ebpf_from_cbpf)
{
 const struct bpf_prog *prog = ctx->prog;
 const u8 r6 = bpf2a64[BPF_REG_6];
 const u8 r7 = bpf2a64[BPF_REG_7];
 const u8 r8 = bpf2a64[BPF_REG_8];
 const u8 r9 = bpf2a64[BPF_REG_9];
 const u8 fp = bpf2a64[BPF_REG_FP];
 const u8 tcc = bpf2a64[TCALL_CNT];
 const int idx0 = ctx->idx;
 int cur_offset;
 emit(A64_PUSH(A64_FP, A64_LR, A64_SP), ctx);
 emit(A64_MOV(1, A64_FP, A64_SP), ctx);


 emit(A64_PUSH(r6, r7, A64_SP), ctx);
 emit(A64_PUSH(r8, r9, A64_SP), ctx);
 emit(A64_PUSH(fp, tcc, A64_SP), ctx);


 emit(A64_MOV(1, fp, A64_SP), ctx);

 if (!ebpf_from_cbpf) {

  emit(A64_MOVZ(1, tcc, 0, 0), ctx);

  cur_offset = ctx->idx - idx0;
  if (cur_offset != PROLOGUE_OFFSET) {
   pr_err_once("PROLOGUE_OFFSET = %d, expected %d!\n",
        cur_offset, PROLOGUE_OFFSET);
   return -1;
  }
 }

 ctx->stack_size = STACK_ALIGN(prog->aux->stack_depth);


 emit(A64_SUB_I(1, A64_SP, A64_SP, ctx->stack_size), ctx);
 return 0;
}
