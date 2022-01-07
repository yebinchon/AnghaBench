
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dh_ctx {int xa; int g; int q; int p; } ;


 int memset (struct dh_ctx*,int ,int) ;
 int mpi_free (int ) ;

__attribute__((used)) static void dh_clear_ctx(struct dh_ctx *ctx)
{
 mpi_free(ctx->p);
 mpi_free(ctx->q);
 mpi_free(ctx->g);
 mpi_free(ctx->xa);
 memset(ctx, 0, sizeof(*ctx));
}
