
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_ctx {int dummy; } ;
typedef int s8 ;


 int ARM_ADD_R (int const,int const,int const) ;
 int const ARM_IP ;
 int const ARM_LR ;
 int ARM_MUL (int const,int const,int const) ;
 int ARM_UMULL (int const,int const,int const,int const) ;
 size_t TMP_REG_1 ;
 size_t TMP_REG_2 ;
 int * arm_bpf_get_reg64 (int const*,int const*,struct jit_ctx*) ;
 int arm_bpf_put_reg32 (int ,int const,struct jit_ctx*) ;
 int ** bpf2a32 ;
 int dst_hi ;
 int dst_lo ;
 int emit (int ,struct jit_ctx*) ;

__attribute__((used)) static inline void emit_a32_mul_r64(const s8 dst[], const s8 src[],
        struct jit_ctx *ctx) {
 const s8 *tmp = bpf2a32[TMP_REG_1];
 const s8 *tmp2 = bpf2a32[TMP_REG_2];
 const s8 *rd, *rt;


 rd = arm_bpf_get_reg64(dst, tmp, ctx);
 rt = arm_bpf_get_reg64(src, tmp2, ctx);


 emit(ARM_MUL(ARM_IP, rd[1], rt[0]), ctx);
 emit(ARM_MUL(ARM_LR, rd[0], rt[1]), ctx);
 emit(ARM_ADD_R(ARM_LR, ARM_IP, ARM_LR), ctx);

 emit(ARM_UMULL(ARM_IP, rd[0], rd[1], rt[1]), ctx);
 emit(ARM_ADD_R(rd[0], ARM_LR, rd[0]), ctx);

 arm_bpf_put_reg32(dst_lo, ARM_IP, ctx);
 arm_bpf_put_reg32(dst_hi, rd[0], ctx);
}
