
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_tfm {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {int aead; } ;
struct crypto4xx_ctx {TYPE_1__ sw_cipher; } ;


 int crypto_aead_setauthsize (int ,unsigned int) ;
 struct crypto_tfm* crypto_aead_tfm (struct crypto_aead*) ;
 struct crypto4xx_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

int crypto4xx_setauthsize_aead(struct crypto_aead *cipher,
          unsigned int authsize)
{
 struct crypto_tfm *tfm = crypto_aead_tfm(cipher);
 struct crypto4xx_ctx *ctx = crypto_tfm_ctx(tfm);

 return crypto_aead_setauthsize(ctx->sw_cipher.aead, authsize);
}
