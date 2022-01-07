
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dh_ctx {int p; } ;
struct crypto_kpp {int dummy; } ;


 struct dh_ctx* dh_get_ctx (struct crypto_kpp*) ;
 unsigned int mpi_get_size (int ) ;

__attribute__((used)) static unsigned int dh_max_size(struct crypto_kpp *tfm)
{
 struct dh_ctx *ctx = dh_get_ctx(tfm);

 return mpi_get_size(ctx->p);
}
