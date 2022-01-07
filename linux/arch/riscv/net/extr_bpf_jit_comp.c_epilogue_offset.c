
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv_jit_context {int epilogue_offset; int ninsns; } ;



__attribute__((used)) static int epilogue_offset(struct rv_jit_context *ctx)
{
 int to = ctx->epilogue_offset, from = ctx->ninsns;

 return (to - from) << 2;
}
