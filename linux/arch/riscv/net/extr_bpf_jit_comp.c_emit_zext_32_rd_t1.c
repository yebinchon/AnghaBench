
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rv_jit_context {int dummy; } ;


 int RV_REG_T1 ;
 int RV_REG_T2 ;
 int emit (int ,struct rv_jit_context*) ;
 int emit_zext_32 (int ,struct rv_jit_context*) ;
 int rv_addi (int ,int ,int ) ;

__attribute__((used)) static void emit_zext_32_rd_t1(u8 *rd, struct rv_jit_context *ctx)
{
 emit(rv_addi(RV_REG_T2, *rd, 0), ctx);
 emit_zext_32(RV_REG_T2, ctx);
 emit_zext_32(RV_REG_T1, ctx);
 *rd = RV_REG_T2;
}
