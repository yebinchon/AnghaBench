
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zstd_ctx {int * dctx; int * dwksp; } ;


 int vfree (int *) ;

__attribute__((used)) static void zstd_decomp_exit(struct zstd_ctx *ctx)
{
 vfree(ctx->dwksp);
 ctx->dwksp = ((void*)0);
 ctx->dctx = ((void*)0);
}
