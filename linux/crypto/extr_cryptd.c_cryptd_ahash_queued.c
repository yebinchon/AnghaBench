
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptd_hash_ctx {int refcnt; } ;
struct cryptd_ahash {int base; } ;


 struct cryptd_hash_ctx* crypto_ahash_ctx (int *) ;
 int refcount_read (int *) ;

bool cryptd_ahash_queued(struct cryptd_ahash *tfm)
{
 struct cryptd_hash_ctx *ctx = crypto_ahash_ctx(&tfm->base);

 return refcount_read(&ctx->refcnt) - 1;
}
