
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jit_ctx {int dummy; } ;
typedef scalar_t__ s32 ;


 int IMMED ;
 int OR_LO (scalar_t__,int) ;
 int RD (int) ;
 int RS1 (int) ;
 int S13 (int) ;
 int SETHI (int,int) ;
 int XOR ;
 int emit (int,struct jit_ctx*) ;

__attribute__((used)) static void emit_set_const_sext(s32 K, u32 reg, struct jit_ctx *ctx)
{
 if (K >= 0) {
  emit(SETHI(K, reg), ctx);
  emit(OR_LO(K, reg), ctx);
 } else {
  u32 hbits = ~(u32) K;
  u32 lbits = -0x400 | (u32) K;

  emit(SETHI(hbits, reg), ctx);
  emit(XOR | IMMED | RS1(reg) | S13(lbits) | RD(reg), ctx);
 }
}
