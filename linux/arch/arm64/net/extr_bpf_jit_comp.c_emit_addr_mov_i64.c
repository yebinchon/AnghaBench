
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct jit_ctx {int dummy; } ;


 int A64_MOVK (int,int const,int,int) ;
 int A64_MOVN (int,int const,int,int) ;
 int emit (int ,struct jit_ctx*) ;

__attribute__((used)) static inline void emit_addr_mov_i64(const int reg, const u64 val,
         struct jit_ctx *ctx)
{
 u64 tmp = val;
 int shift = 0;

 emit(A64_MOVN(1, reg, ~tmp & 0xffff, shift), ctx);
 while (shift < 32) {
  tmp >>= 16;
  shift += 16;
  emit(A64_MOVK(1, reg, tmp & 0xffff, shift), ctx);
 }
}
