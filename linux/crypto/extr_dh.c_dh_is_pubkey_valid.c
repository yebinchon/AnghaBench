
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dh_ctx {int p; scalar_t__ q; } ;
typedef int MPI ;


 int EINVAL ;
 int ENOMEM ;
 int mpi_alloc (int ) ;
 scalar_t__ mpi_cmp (int ,int ) ;
 int mpi_cmp_ui (int ,int) ;
 int mpi_free (int ) ;
 int mpi_powm (int ,int ,scalar_t__,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int dh_is_pubkey_valid(struct dh_ctx *ctx, MPI y)
{
 if (unlikely(!ctx->p))
  return -EINVAL;







 if (mpi_cmp_ui(y, 1) < 1 || mpi_cmp(y, ctx->p) >= 0)
  return -EINVAL;


 if (ctx->q) {
  MPI val = mpi_alloc(0);
  int ret;

  if (!val)
   return -ENOMEM;

  ret = mpi_powm(val, y, ctx->q, ctx->p);

  if (ret) {
   mpi_free(val);
   return ret;
  }

  ret = mpi_cmp_ui(val, 1);

  mpi_free(val);

  if (ret != 0)
   return -EINVAL;
 }

 return 0;
}
