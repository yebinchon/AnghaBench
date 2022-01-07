
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_ctx {int dummy; } ;
typedef int s8 ;


 int ARM_RSBS_I (int const,int const,int ) ;
 int ARM_RSC_I (int const,int const,int ) ;
 size_t TMP_REG_1 ;
 int * arm_bpf_get_reg64 (int const*,int const*,struct jit_ctx*) ;
 int arm_bpf_put_reg64 (int const*,int const*,struct jit_ctx*) ;
 int ** bpf2a32 ;
 int emit (int ,struct jit_ctx*) ;

__attribute__((used)) static inline void emit_a32_neg64(const s8 dst[],
    struct jit_ctx *ctx){
 const s8 *tmp = bpf2a32[TMP_REG_1];
 const s8 *rd;


 rd = arm_bpf_get_reg64(dst, tmp, ctx);


 emit(ARM_RSBS_I(rd[1], rd[1], 0), ctx);
 emit(ARM_RSC_I(rd[0], rd[0], 0), ctx);

 arm_bpf_put_reg64(dst, rd, ctx);
}
