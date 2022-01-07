
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptd_hash_ctx {int refcnt; } ;
struct cryptd_ahash {int base; } ;


 struct cryptd_hash_ctx* crypto_ahash_ctx (int *) ;
 int crypto_free_ahash (int *) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void cryptd_free_ahash(struct cryptd_ahash *tfm)
{
 struct cryptd_hash_ctx *ctx = crypto_ahash_ctx(&tfm->base);

 if (refcount_dec_and_test(&ctx->refcnt))
  crypto_free_ahash(&tfm->base);
}
