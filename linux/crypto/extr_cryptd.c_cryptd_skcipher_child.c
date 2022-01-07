
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_skcipher {int dummy; } ;
struct cryptd_skcipher_ctx {TYPE_1__* child; } ;
struct cryptd_skcipher {int base; } ;
struct TYPE_2__ {struct crypto_skcipher base; } ;


 struct cryptd_skcipher_ctx* crypto_skcipher_ctx (int *) ;

struct crypto_skcipher *cryptd_skcipher_child(struct cryptd_skcipher *tfm)
{
 struct cryptd_skcipher_ctx *ctx = crypto_skcipher_ctx(&tfm->base);

 return &ctx->child->base;
}
