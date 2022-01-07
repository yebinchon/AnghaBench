
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jit_ctx {size_t idx; int * image; } ;



__attribute__((used)) static void emit(const u32 insn, struct jit_ctx *ctx)
{
 if (ctx->image != ((void*)0))
  ctx->image[ctx->idx] = insn;

 ctx->idx++;
}
