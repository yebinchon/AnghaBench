
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dh_ctx {int xa; } ;
struct dh {int key_size; int key; } ;
struct crypto_kpp {int dummy; } ;


 int EINVAL ;
 scalar_t__ crypto_dh_decode_key (void const*,unsigned int,struct dh*) ;
 int dh_clear_ctx (struct dh_ctx*) ;
 struct dh_ctx* dh_get_ctx (struct crypto_kpp*) ;
 scalar_t__ dh_set_params (struct dh_ctx*,struct dh*) ;
 int mpi_read_raw_data (int ,int ) ;

__attribute__((used)) static int dh_set_secret(struct crypto_kpp *tfm, const void *buf,
    unsigned int len)
{
 struct dh_ctx *ctx = dh_get_ctx(tfm);
 struct dh params;


 dh_clear_ctx(ctx);

 if (crypto_dh_decode_key(buf, len, &params) < 0)
  goto err_clear_ctx;

 if (dh_set_params(ctx, &params) < 0)
  goto err_clear_ctx;

 ctx->xa = mpi_read_raw_data(params.key, params.key_size);
 if (!ctx->xa)
  goto err_clear_ctx;

 return 0;

err_clear_ctx:
 dh_clear_ctx(ctx);
 return -EINVAL;
}
