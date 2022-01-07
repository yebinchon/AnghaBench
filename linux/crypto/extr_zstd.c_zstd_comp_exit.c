
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zstd_ctx {int * cctx; int * cwksp; } ;


 int vfree (int *) ;

__attribute__((used)) static void zstd_comp_exit(struct zstd_ctx *ctx)
{
 vfree(ctx->cwksp);
 ctx->cwksp = ((void*)0);
 ctx->cctx = ((void*)0);
}
