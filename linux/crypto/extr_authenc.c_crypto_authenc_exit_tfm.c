
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_authenc_ctx {int enc; int auth; } ;
struct crypto_aead {int dummy; } ;


 struct crypto_authenc_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_free_ahash (int ) ;
 int crypto_free_skcipher (int ) ;
 int crypto_put_default_null_skcipher () ;

__attribute__((used)) static void crypto_authenc_exit_tfm(struct crypto_aead *tfm)
{
 struct crypto_authenc_ctx *ctx = crypto_aead_ctx(tfm);

 crypto_free_ahash(ctx->auth);
 crypto_free_skcipher(ctx->enc);
 crypto_put_default_null_skcipher();
}
