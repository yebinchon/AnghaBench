
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {struct crypto_aead* aead; } ;
struct crypto4xx_ctx {TYPE_1__ sw_cipher; } ;


 int CRYPTO_TFM_REQ_MASK ;
 int CRYPTO_TFM_RES_MASK ;
 int crypto_aead_clear_flags (struct crypto_aead*,int) ;
 int crypto_aead_get_flags (struct crypto_aead*) ;
 int crypto_aead_set_flags (struct crypto_aead*,int) ;
 int crypto_aead_setkey (struct crypto_aead*,int const*,unsigned int) ;

__attribute__((used)) static int crypto4xx_aead_setup_fallback(struct crypto4xx_ctx *ctx,
      struct crypto_aead *cipher,
      const u8 *key,
      unsigned int keylen)
{
 int rc;

 crypto_aead_clear_flags(ctx->sw_cipher.aead, CRYPTO_TFM_REQ_MASK);
 crypto_aead_set_flags(ctx->sw_cipher.aead,
  crypto_aead_get_flags(cipher) & CRYPTO_TFM_REQ_MASK);
 rc = crypto_aead_setkey(ctx->sw_cipher.aead, key, keylen);
 crypto_aead_clear_flags(cipher, CRYPTO_TFM_RES_MASK);
 crypto_aead_set_flags(cipher,
  crypto_aead_get_flags(ctx->sw_cipher.aead) &
   CRYPTO_TFM_RES_MASK);

 return rc;
}
