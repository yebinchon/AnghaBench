
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jit_ctx {int* offsets; int idx; int gen_b_offsets; } ;


 int OFFSETS_B_CONV ;

__attribute__((used)) static u32 b_imm(unsigned int tgt, struct jit_ctx *ctx)
{
 if (!ctx->gen_b_offsets)
  return 0;
 return (ctx->offsets[tgt] & ~OFFSETS_B_CONV) -
  (ctx->idx * 4) - 4;
}
