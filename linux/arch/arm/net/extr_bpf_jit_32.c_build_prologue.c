
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct jit_ctx {int stack_size; } ;
typedef int s8 ;


 int const ARM_FP ;
 int ARM_IP ;
 int ARM_MOV_I (int const,int ) ;
 int ARM_MOV_R (int const,int const) ;
 int ARM_PC ;
 int ARM_PUSH (int) ;
 int ARM_SP ;
 int ARM_STR_I (int const,int const,int ) ;
 int ARM_SUB_I (int const,int,int) ;
 size_t BPF_REG_0 ;
 size_t BPF_REG_1 ;
 size_t BPF_REG_6 ;
 size_t BPF_REG_FP ;
 int CALLEE_PUSH_MASK ;
 int EBPF_SCRATCH_TO_ARM_FP (int const) ;
 int SCRATCH_SIZE ;
 int STACK_SIZE ;
 size_t TCALL_CNT ;
 int** bpf2a32 ;
 int emit (int ,struct jit_ctx*) ;
 int emit_a32_mov_i (int const,int ,struct jit_ctx*) ;
 int emit_a32_mov_r (int const,int,struct jit_ctx*) ;
 int imm8m (int ) ;

__attribute__((used)) static void build_prologue(struct jit_ctx *ctx)
{
 const s8 r0 = bpf2a32[BPF_REG_0][1];
 const s8 r2 = bpf2a32[BPF_REG_1][1];
 const s8 r3 = bpf2a32[BPF_REG_1][0];
 const s8 r4 = bpf2a32[BPF_REG_6][1];
 const s8 fplo = bpf2a32[BPF_REG_FP][1];
 const s8 fphi = bpf2a32[BPF_REG_FP][0];
 const s8 *tcc = bpf2a32[TCALL_CNT];
 emit(ARM_PUSH(CALLEE_PUSH_MASK), ctx);
 emit(ARM_MOV_R(ARM_FP, ARM_SP), ctx);


 emit(ARM_SUB_I(ARM_IP, ARM_SP, SCRATCH_SIZE), ctx);

 ctx->stack_size = imm8m(STACK_SIZE);


 emit(ARM_SUB_I(ARM_SP, ARM_SP, ctx->stack_size), ctx);


 emit_a32_mov_r(fplo, ARM_IP, ctx);
 emit_a32_mov_i(fphi, 0, ctx);


 emit(ARM_MOV_I(r4, 0), ctx);


 emit(ARM_MOV_R(r3, r4), ctx);
 emit(ARM_MOV_R(r2, r0), ctx);

 emit(ARM_STR_I(r4, ARM_FP, EBPF_SCRATCH_TO_ARM_FP(tcc[0])), ctx);
 emit(ARM_STR_I(r4, ARM_FP, EBPF_SCRATCH_TO_ARM_FP(tcc[1])), ctx);

}
