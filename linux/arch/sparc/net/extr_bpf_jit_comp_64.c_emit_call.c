
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jit_ctx {unsigned int* image; size_t idx; } ;


 unsigned int CALL ;

__attribute__((used)) static void emit_call(u32 *func, struct jit_ctx *ctx)
{
 if (ctx->image != ((void*)0)) {
  void *here = &ctx->image[ctx->idx];
  unsigned int off;

  off = (void *)func - here;
  ctx->image[ctx->idx] = CALL | ((off >> 2) & 0x3fffffff);
 }
 ctx->idx++;
}
