
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_ccm_ctx {int ctr; int mac; } ;
struct crypto_aead {int dummy; } ;


 struct crypto_ccm_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_free_ahash (int ) ;
 int crypto_free_skcipher (int ) ;

__attribute__((used)) static void crypto_ccm_exit_tfm(struct crypto_aead *tfm)
{
 struct crypto_ccm_ctx *ctx = crypto_aead_ctx(tfm);

 crypto_free_ahash(ctx->mac);
 crypto_free_skcipher(ctx->ctr);
}
