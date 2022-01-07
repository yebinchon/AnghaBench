
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_ctx {int dummy; } ;
typedef int s8 ;


 int const ARM_IP ;
 int const ARM_LR ;
 int ARM_MOV_SR (int const,int const,int ,int ) ;
 int ARM_ORR_SR (int const,int const,int const,int ,int const) ;
 int ARM_RSB_I (int const,int ,int) ;
 int ARM_SUB_I (int const,int ,int) ;
 int SRTYPE_ASL ;
 int SRTYPE_LSR ;
 size_t TMP_REG_1 ;
 size_t TMP_REG_2 ;
 int arm_bpf_get_reg32 (int ,int const,struct jit_ctx*) ;
 int * arm_bpf_get_reg64 (int const*,int const*,struct jit_ctx*) ;
 int arm_bpf_put_reg32 (int ,int const,struct jit_ctx*) ;
 int ** bpf2a32 ;
 int dst_hi ;
 int dst_lo ;
 int emit (int ,struct jit_ctx*) ;
 int src_lo ;

__attribute__((used)) static inline void emit_a32_lsh_r64(const s8 dst[], const s8 src[],
        struct jit_ctx *ctx) {
 const s8 *tmp = bpf2a32[TMP_REG_1];
 const s8 *tmp2 = bpf2a32[TMP_REG_2];
 const s8 *rd;
 s8 rt;


 rt = arm_bpf_get_reg32(src_lo, tmp2[1], ctx);
 rd = arm_bpf_get_reg64(dst, tmp, ctx);


 emit(ARM_SUB_I(ARM_IP, rt, 32), ctx);
 emit(ARM_RSB_I(tmp2[0], rt, 32), ctx);
 emit(ARM_MOV_SR(ARM_LR, rd[0], SRTYPE_ASL, rt), ctx);
 emit(ARM_ORR_SR(ARM_LR, ARM_LR, rd[1], SRTYPE_ASL, ARM_IP), ctx);
 emit(ARM_ORR_SR(ARM_IP, ARM_LR, rd[1], SRTYPE_LSR, tmp2[0]), ctx);
 emit(ARM_MOV_SR(ARM_LR, rd[1], SRTYPE_ASL, rt), ctx);

 arm_bpf_put_reg32(dst_lo, ARM_LR, ctx);
 arm_bpf_put_reg32(dst_hi, ARM_IP, ctx);
}
