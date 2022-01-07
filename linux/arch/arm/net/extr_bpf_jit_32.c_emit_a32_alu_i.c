
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct jit_ctx {int dummy; } ;
typedef int s8 ;


 int ARM_LSL_I (int ,int ,int const) ;
 int ARM_LSR_I (int ,int ,int const) ;
 int ARM_RSB_I (int ,int ,int const) ;



 size_t TMP_REG_1 ;
 int arm_bpf_get_reg32 (int const,int const,struct jit_ctx*) ;
 int arm_bpf_put_reg32 (int const,int ,struct jit_ctx*) ;
 int ** bpf2a32 ;
 int emit (int ,struct jit_ctx*) ;

__attribute__((used)) static inline void emit_a32_alu_i(const s8 dst, const u32 val,
    struct jit_ctx *ctx, const u8 op) {
 const s8 *tmp = bpf2a32[TMP_REG_1];
 s8 rd;

 rd = arm_bpf_get_reg32(dst, tmp[0], ctx);


 switch (op) {
 case 130:
  emit(ARM_LSL_I(rd, rd, val), ctx);
  break;
 case 128:
  emit(ARM_LSR_I(rd, rd, val), ctx);
  break;
 case 129:
  emit(ARM_RSB_I(rd, rd, val), ctx);
  break;
 }

 arm_bpf_put_reg32(dst, rd, ctx);
}
