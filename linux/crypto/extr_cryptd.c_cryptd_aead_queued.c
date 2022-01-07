
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptd_aead_ctx {int refcnt; } ;
struct cryptd_aead {int base; } ;


 struct cryptd_aead_ctx* crypto_aead_ctx (int *) ;
 int refcount_read (int *) ;

bool cryptd_aead_queued(struct cryptd_aead *tfm)
{
 struct cryptd_aead_ctx *ctx = crypto_aead_ctx(&tfm->base);

 return refcount_read(&ctx->refcnt) - 1;
}
