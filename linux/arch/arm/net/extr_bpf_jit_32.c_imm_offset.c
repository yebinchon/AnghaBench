
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct jit_ctx {unsigned int imm_count; scalar_t__* imms; int* offsets; int idx; int flags; scalar_t__* target; scalar_t__ epilogue_bytes; scalar_t__ prologue_bytes; TYPE_1__* prog; } ;
struct TYPE_2__ {int len; } ;


 int FLAG_IMM_OVERFLOW ;

__attribute__((used)) static u16 imm_offset(u32 k, struct jit_ctx *ctx)
{
 unsigned int i = 0, offset;
 u16 imm;


 if (ctx->target == ((void*)0)) {
  ctx->imm_count++;
  return 0;
 }

 while ((i < ctx->imm_count) && ctx->imms[i]) {
  if (ctx->imms[i] == k)
   break;
  i++;
 }

 if (ctx->imms[i] == 0)
  ctx->imms[i] = k;


 offset = ctx->offsets[ctx->prog->len - 1] * 4;
 offset += ctx->prologue_bytes;
 offset += ctx->epilogue_bytes;
 offset += i * 4;

 ctx->target[offset / 4] = k;


 imm = offset - (8 + ctx->idx * 4);

 if (imm & ~0xfff) {




  ctx->flags |= FLAG_IMM_OVERFLOW;
  return 0;
 }

 return imm;
}
