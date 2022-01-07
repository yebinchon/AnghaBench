
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptd_aead_ctx {int refcnt; } ;
struct cryptd_aead {int base; } ;


 struct cryptd_aead_ctx* crypto_aead_ctx (int *) ;
 int crypto_free_aead (int *) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void cryptd_free_aead(struct cryptd_aead *tfm)
{
 struct cryptd_aead_ctx *ctx = crypto_aead_ctx(&tfm->base);

 if (refcount_dec_and_test(&ctx->refcnt))
  crypto_free_aead(&tfm->base);
}
