
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ghash_async_ctx {struct cryptd_ahash* cryptd_tfm; } ;
struct crypto_tfm {int dummy; } ;
struct cryptd_ahash {int base; } ;
struct ahash_request {int dummy; } ;


 scalar_t__ IS_ERR (struct cryptd_ahash*) ;
 int PTR_ERR (struct cryptd_ahash*) ;
 int __crypto_ahash_cast (struct crypto_tfm*) ;
 struct cryptd_ahash* cryptd_alloc_ahash (char*,int ,int ) ;
 scalar_t__ crypto_ahash_reqsize (int *) ;
 int crypto_ahash_set_reqsize (int ,scalar_t__) ;
 struct ghash_async_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int ghash_async_init_tfm(struct crypto_tfm *tfm)
{
 struct cryptd_ahash *cryptd_tfm;
 struct ghash_async_ctx *ctx = crypto_tfm_ctx(tfm);

 cryptd_tfm = cryptd_alloc_ahash("ghash-ce-sync", 0, 0);
 if (IS_ERR(cryptd_tfm))
  return PTR_ERR(cryptd_tfm);
 ctx->cryptd_tfm = cryptd_tfm;
 crypto_ahash_set_reqsize(__crypto_ahash_cast(tfm),
     sizeof(struct ahash_request) +
     crypto_ahash_reqsize(&cryptd_tfm->base));

 return 0;
}
