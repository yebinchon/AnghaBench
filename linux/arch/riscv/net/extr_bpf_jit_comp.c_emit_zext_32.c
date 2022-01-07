
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rv_jit_context {int dummy; } ;


 int emit (int ,struct rv_jit_context*) ;
 int rv_slli (int ,int ,int) ;
 int rv_srli (int ,int ,int) ;

__attribute__((used)) static void emit_zext_32(u8 reg, struct rv_jit_context *ctx)
{
 emit(rv_slli(reg, reg, 32), ctx);
 emit(rv_srli(reg, reg, 32), ctx);
}
