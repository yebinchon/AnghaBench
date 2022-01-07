
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rv_jit_context {int stack_size; } ;


 int RV_REG_A0 ;
 int RV_REG_A5 ;
 int RV_REG_FP ;
 int RV_REG_RA ;
 int RV_REG_S1 ;
 int RV_REG_S2 ;
 int RV_REG_S3 ;
 int RV_REG_S4 ;
 int RV_REG_S5 ;
 int RV_REG_S6 ;
 int RV_REG_SP ;
 int RV_REG_ZERO ;
 int emit (int ,struct rv_jit_context*) ;
 int rv_addi (int ,int ,int) ;
 int rv_jalr (int ,int ,int ) ;
 int rv_ld (int ,int,int ) ;
 scalar_t__ seen_reg (int ,struct rv_jit_context*) ;

__attribute__((used)) static void __build_epilogue(u8 reg, struct rv_jit_context *ctx)
{
 int stack_adjust = ctx->stack_size, store_offset = stack_adjust - 8;

 if (seen_reg(RV_REG_RA, ctx)) {
  emit(rv_ld(RV_REG_RA, store_offset, RV_REG_SP), ctx);
  store_offset -= 8;
 }
 emit(rv_ld(RV_REG_FP, store_offset, RV_REG_SP), ctx);
 store_offset -= 8;
 if (seen_reg(RV_REG_S1, ctx)) {
  emit(rv_ld(RV_REG_S1, store_offset, RV_REG_SP), ctx);
  store_offset -= 8;
 }
 if (seen_reg(RV_REG_S2, ctx)) {
  emit(rv_ld(RV_REG_S2, store_offset, RV_REG_SP), ctx);
  store_offset -= 8;
 }
 if (seen_reg(RV_REG_S3, ctx)) {
  emit(rv_ld(RV_REG_S3, store_offset, RV_REG_SP), ctx);
  store_offset -= 8;
 }
 if (seen_reg(RV_REG_S4, ctx)) {
  emit(rv_ld(RV_REG_S4, store_offset, RV_REG_SP), ctx);
  store_offset -= 8;
 }
 if (seen_reg(RV_REG_S5, ctx)) {
  emit(rv_ld(RV_REG_S5, store_offset, RV_REG_SP), ctx);
  store_offset -= 8;
 }
 if (seen_reg(RV_REG_S6, ctx)) {
  emit(rv_ld(RV_REG_S6, store_offset, RV_REG_SP), ctx);
  store_offset -= 8;
 }

 emit(rv_addi(RV_REG_SP, RV_REG_SP, stack_adjust), ctx);

 emit(rv_addi(RV_REG_A0, RV_REG_A5, 0), ctx);
 emit(rv_jalr(RV_REG_ZERO, reg, 0), ctx);
}
