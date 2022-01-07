
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_aead {int dummy; } ;
struct chachapoly_ctx {unsigned int saltlen; int chacha; int salt; } ;


 unsigned int CHACHA_KEY_SIZE ;
 int CRYPTO_TFM_REQ_MASK ;
 int CRYPTO_TFM_RES_MASK ;
 int EINVAL ;
 struct chachapoly_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_get_flags (struct crypto_aead*) ;
 int crypto_aead_set_flags (struct crypto_aead*,int) ;
 int crypto_skcipher_clear_flags (int ,int) ;
 int crypto_skcipher_get_flags (int ) ;
 int crypto_skcipher_set_flags (int ,int) ;
 int crypto_skcipher_setkey (int ,int const*,unsigned int) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static int chachapoly_setkey(struct crypto_aead *aead, const u8 *key,
        unsigned int keylen)
{
 struct chachapoly_ctx *ctx = crypto_aead_ctx(aead);
 int err;

 if (keylen != ctx->saltlen + CHACHA_KEY_SIZE)
  return -EINVAL;

 keylen -= ctx->saltlen;
 memcpy(ctx->salt, key + keylen, ctx->saltlen);

 crypto_skcipher_clear_flags(ctx->chacha, CRYPTO_TFM_REQ_MASK);
 crypto_skcipher_set_flags(ctx->chacha, crypto_aead_get_flags(aead) &
            CRYPTO_TFM_REQ_MASK);

 err = crypto_skcipher_setkey(ctx->chacha, key, keylen);
 crypto_aead_set_flags(aead, crypto_skcipher_get_flags(ctx->chacha) &
        CRYPTO_TFM_RES_MASK);
 return err;
}
