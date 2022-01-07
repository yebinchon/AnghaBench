
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptd_skcipher_ctx {int refcnt; } ;
struct cryptd_skcipher {int base; } ;


 struct cryptd_skcipher_ctx* crypto_skcipher_ctx (int *) ;
 int refcount_read (int *) ;

bool cryptd_skcipher_queued(struct cryptd_skcipher *tfm)
{
 struct cryptd_skcipher_ctx *ctx = crypto_skcipher_ctx(&tfm->base);

 return refcount_read(&ctx->refcnt) - 1;
}
