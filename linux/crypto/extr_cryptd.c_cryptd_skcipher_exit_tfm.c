
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_skcipher {int dummy; } ;
struct cryptd_skcipher_ctx {int child; } ;


 int crypto_free_sync_skcipher (int ) ;
 struct cryptd_skcipher_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;

__attribute__((used)) static void cryptd_skcipher_exit_tfm(struct crypto_skcipher *tfm)
{
 struct cryptd_skcipher_ctx *ctx = crypto_skcipher_ctx(tfm);

 crypto_free_sync_skcipher(ctx->child);
}
