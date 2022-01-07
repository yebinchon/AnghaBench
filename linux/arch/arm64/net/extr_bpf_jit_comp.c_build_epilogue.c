
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct jit_ctx {int stack_size; } ;


 int A64_ADD_I (int,int ,int ,int ) ;
 int const A64_FP ;
 int const A64_LR ;
 int A64_MOV (int,int const,int const) ;
 int A64_POP (int const,int const,int ) ;
 int const A64_R (int) ;
 int A64_RET (int const) ;
 int A64_SP ;
 size_t BPF_REG_0 ;
 size_t BPF_REG_6 ;
 size_t BPF_REG_7 ;
 size_t BPF_REG_8 ;
 size_t BPF_REG_9 ;
 size_t BPF_REG_FP ;
 int * bpf2a64 ;
 int emit (int ,struct jit_ctx*) ;

__attribute__((used)) static void build_epilogue(struct jit_ctx *ctx)
{
 const u8 r0 = bpf2a64[BPF_REG_0];
 const u8 r6 = bpf2a64[BPF_REG_6];
 const u8 r7 = bpf2a64[BPF_REG_7];
 const u8 r8 = bpf2a64[BPF_REG_8];
 const u8 r9 = bpf2a64[BPF_REG_9];
 const u8 fp = bpf2a64[BPF_REG_FP];


 emit(A64_ADD_I(1, A64_SP, A64_SP, ctx->stack_size), ctx);


 emit(A64_POP(fp, A64_R(26), A64_SP), ctx);


 emit(A64_POP(r8, r9, A64_SP), ctx);
 emit(A64_POP(r6, r7, A64_SP), ctx);


 emit(A64_POP(A64_FP, A64_LR, A64_SP), ctx);


 emit(A64_MOV(1, A64_R(0), r0), ctx);

 emit(A64_RET(A64_LR), ctx);
}
