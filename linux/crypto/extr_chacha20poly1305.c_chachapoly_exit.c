
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;
struct chachapoly_ctx {int chacha; int poly; } ;


 struct chachapoly_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_free_ahash (int ) ;
 int crypto_free_skcipher (int ) ;

__attribute__((used)) static void chachapoly_exit(struct crypto_aead *tfm)
{
 struct chachapoly_ctx *ctx = crypto_aead_ctx(tfm);

 crypto_free_ahash(ctx->poly);
 crypto_free_skcipher(ctx->chacha);
}
