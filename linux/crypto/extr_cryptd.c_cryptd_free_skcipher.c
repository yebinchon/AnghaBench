
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptd_skcipher_ctx {int refcnt; } ;
struct cryptd_skcipher {int base; } ;


 int crypto_free_skcipher (int *) ;
 struct cryptd_skcipher_ctx* crypto_skcipher_ctx (int *) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void cryptd_free_skcipher(struct cryptd_skcipher *tfm)
{
 struct cryptd_skcipher_ctx *ctx = crypto_skcipher_ctx(&tfm->base);

 if (refcount_dec_and_test(&ctx->refcnt))
  crypto_free_skcipher(&tfm->base);
}
