
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct jit_ctx {int dummy; } ;
typedef int s32 ;


 int A64_MOVK (int const,int const,int,int) ;
 int A64_MOVN (int const,int const,int,int) ;
 int A64_MOVZ (int const,int const,int,int ) ;
 int emit (int ,struct jit_ctx*) ;

__attribute__((used)) static inline void emit_a64_mov_i(const int is64, const int reg,
      const s32 val, struct jit_ctx *ctx)
{
 u16 hi = val >> 16;
 u16 lo = val & 0xffff;

 if (hi & 0x8000) {
  if (hi == 0xffff) {
   emit(A64_MOVN(is64, reg, (u16)~lo, 0), ctx);
  } else {
   emit(A64_MOVN(is64, reg, (u16)~hi, 16), ctx);
   if (lo != 0xffff)
    emit(A64_MOVK(is64, reg, lo, 0), ctx);
  }
 } else {
  emit(A64_MOVZ(is64, reg, lo, 0), ctx);
  if (hi)
   emit(A64_MOVK(is64, reg, hi, 16), ctx);
 }
}
