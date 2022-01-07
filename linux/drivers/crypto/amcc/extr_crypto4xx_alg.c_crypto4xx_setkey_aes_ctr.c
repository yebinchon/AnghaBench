
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_skcipher {int dummy; } ;
struct crypto4xx_ctx {int dummy; } ;


 int CRYPTO_FEEDBACK_MODE_NO_FB ;
 int CRYPTO_MODE_CTR ;
 int crypto4xx_setkey_aes (struct crypto_skcipher*,int const*,unsigned int,int ,int ) ;
 int crypto4xx_sk_setup_fallback (struct crypto4xx_ctx*,struct crypto_skcipher*,int const*,unsigned int) ;
 struct crypto4xx_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;

int crypto4xx_setkey_aes_ctr(struct crypto_skcipher *cipher,
        const u8 *key, unsigned int keylen)
{
 struct crypto4xx_ctx *ctx = crypto_skcipher_ctx(cipher);
 int rc;

 rc = crypto4xx_sk_setup_fallback(ctx, cipher, key, keylen);
 if (rc)
  return rc;

 return crypto4xx_setkey_aes(cipher, key, keylen,
  CRYPTO_MODE_CTR, CRYPTO_FEEDBACK_MODE_NO_FB);
}
