
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_skcipher {int dummy; } ;
struct crypto_ccm_ctx {struct crypto_ahash* mac; struct crypto_skcipher* ctr; } ;
struct crypto_ahash {int dummy; } ;
struct crypto_aead {int dummy; } ;


 int CRYPTO_TFM_REQ_MASK ;
 int CRYPTO_TFM_RES_MASK ;
 struct crypto_ccm_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_get_flags (struct crypto_aead*) ;
 int crypto_aead_set_flags (struct crypto_aead*,int) ;
 int crypto_ahash_clear_flags (struct crypto_ahash*,int) ;
 int crypto_ahash_get_flags (struct crypto_ahash*) ;
 int crypto_ahash_set_flags (struct crypto_ahash*,int) ;
 int crypto_ahash_setkey (struct crypto_ahash*,int const*,unsigned int) ;
 int crypto_skcipher_clear_flags (struct crypto_skcipher*,int) ;
 int crypto_skcipher_get_flags (struct crypto_skcipher*) ;
 int crypto_skcipher_set_flags (struct crypto_skcipher*,int) ;
 int crypto_skcipher_setkey (struct crypto_skcipher*,int const*,unsigned int) ;

__attribute__((used)) static int crypto_ccm_setkey(struct crypto_aead *aead, const u8 *key,
        unsigned int keylen)
{
 struct crypto_ccm_ctx *ctx = crypto_aead_ctx(aead);
 struct crypto_skcipher *ctr = ctx->ctr;
 struct crypto_ahash *mac = ctx->mac;
 int err = 0;

 crypto_skcipher_clear_flags(ctr, CRYPTO_TFM_REQ_MASK);
 crypto_skcipher_set_flags(ctr, crypto_aead_get_flags(aead) &
           CRYPTO_TFM_REQ_MASK);
 err = crypto_skcipher_setkey(ctr, key, keylen);
 crypto_aead_set_flags(aead, crypto_skcipher_get_flags(ctr) &
         CRYPTO_TFM_RES_MASK);
 if (err)
  goto out;

 crypto_ahash_clear_flags(mac, CRYPTO_TFM_REQ_MASK);
 crypto_ahash_set_flags(mac, crypto_aead_get_flags(aead) &
        CRYPTO_TFM_REQ_MASK);
 err = crypto_ahash_setkey(mac, key, keylen);
 crypto_aead_set_flags(aead, crypto_ahash_get_flags(mac) &
         CRYPTO_TFM_RES_MASK);

out:
 return err;
}
