
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dh_ctx {int p; int xa; } ;
typedef int MPI ;


 int mpi_powm (int ,int ,int ,int ) ;

__attribute__((used)) static int _compute_val(const struct dh_ctx *ctx, MPI base, MPI val)
{

 return mpi_powm(val, base, ctx->xa, ctx->p);
}
