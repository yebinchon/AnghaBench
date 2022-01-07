
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_ctx {int epilogue_offset; int idx; int * target; } ;



__attribute__((used)) static inline int epilogue_offset(const struct jit_ctx *ctx)
{
 int to, from;

 if (ctx->target == ((void*)0))
  return 0;
 to = ctx->epilogue_offset;
 from = ctx->idx;

 return to - from - 2;
}
