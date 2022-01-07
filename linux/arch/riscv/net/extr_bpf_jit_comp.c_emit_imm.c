
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rv_jit_context {int dummy; } ;
typedef int s64 ;


 int RV_REG_ZERO ;
 int __ffs (int) ;
 int emit (int ,struct rv_jit_context*) ;
 scalar_t__ is_32b_int (int) ;
 int rv_addi (int ,int ,int) ;
 int rv_addiw (int ,int ,int) ;
 int rv_lui (int ,int) ;
 int rv_slli (int ,int ,int) ;

__attribute__((used)) static void emit_imm(u8 rd, s64 val, struct rv_jit_context *ctx)
{
 s64 upper = (val + (1 << 11)) >> 12, lower = val & 0xfff;
 int shift;

 if (is_32b_int(val)) {
  if (upper)
   emit(rv_lui(rd, upper), ctx);

  if (!upper) {
   emit(rv_addi(rd, RV_REG_ZERO, lower), ctx);
   return;
  }

  emit(rv_addiw(rd, rd, lower), ctx);
  return;
 }

 shift = __ffs(upper);
 upper >>= shift;
 shift += 12;

 emit_imm(rd, upper, ctx);

 emit(rv_slli(rd, rd, shift), ctx);
 if (lower)
  emit(rv_addi(rd, rd, lower), ctx);
}
