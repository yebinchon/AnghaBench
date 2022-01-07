
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct jit_ctx {int dummy; } ;


 int A64_MOVK (int,int const,int,int) ;
 int A64_MOVN (int,int const,int,int) ;
 int A64_MOVZ (int,int const,int,int) ;
 int emit (int ,struct jit_ctx*) ;
 void emit_a64_mov_i (int ,int const,int ,struct jit_ctx*) ;
 int fls64 (int) ;
 scalar_t__ i64_i16_blocks (int,int) ;
 int max (int ,int ) ;
 int round_down (int,int) ;

__attribute__((used)) static inline void emit_a64_mov_i64(const int reg, const u64 val,
        struct jit_ctx *ctx)
{
 u64 nrm_tmp = val, rev_tmp = ~val;
 bool inverse;
 int shift;

 if (!(nrm_tmp >> 32))
  return emit_a64_mov_i(0, reg, (u32)val, ctx);

 inverse = i64_i16_blocks(nrm_tmp, 1) < i64_i16_blocks(nrm_tmp, 0);
 shift = max(round_down((inverse ? (fls64(rev_tmp) - 1) :
       (fls64(nrm_tmp) - 1)), 16), 0);
 if (inverse)
  emit(A64_MOVN(1, reg, (rev_tmp >> shift) & 0xffff, shift), ctx);
 else
  emit(A64_MOVZ(1, reg, (nrm_tmp >> shift) & 0xffff, shift), ctx);
 shift -= 16;
 while (shift >= 0) {
  if (((nrm_tmp >> shift) & 0xffff) != (inverse ? 0xffff : 0x0000))
   emit(A64_MOVK(1, reg, (nrm_tmp >> shift) & 0xffff, shift), ctx);
  shift -= 16;
 }
}
