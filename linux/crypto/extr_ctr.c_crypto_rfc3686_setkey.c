
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_skcipher {int dummy; } ;
struct crypto_rfc3686_ctx {int nonce; struct crypto_skcipher* child; } ;


 int CRYPTO_TFM_REQ_MASK ;
 int CRYPTO_TFM_RES_MASK ;
 unsigned int CTR_RFC3686_NONCE_SIZE ;
 int EINVAL ;
 int crypto_skcipher_clear_flags (struct crypto_skcipher*,int) ;
 struct crypto_rfc3686_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int crypto_skcipher_get_flags (struct crypto_skcipher*) ;
 int crypto_skcipher_set_flags (struct crypto_skcipher*,int) ;
 int crypto_skcipher_setkey (struct crypto_skcipher*,int const*,unsigned int) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static int crypto_rfc3686_setkey(struct crypto_skcipher *parent,
     const u8 *key, unsigned int keylen)
{
 struct crypto_rfc3686_ctx *ctx = crypto_skcipher_ctx(parent);
 struct crypto_skcipher *child = ctx->child;
 int err;


 if (keylen < CTR_RFC3686_NONCE_SIZE)
  return -EINVAL;

 memcpy(ctx->nonce, key + (keylen - CTR_RFC3686_NONCE_SIZE),
        CTR_RFC3686_NONCE_SIZE);

 keylen -= CTR_RFC3686_NONCE_SIZE;

 crypto_skcipher_clear_flags(child, CRYPTO_TFM_REQ_MASK);
 crypto_skcipher_set_flags(child, crypto_skcipher_get_flags(parent) &
      CRYPTO_TFM_REQ_MASK);
 err = crypto_skcipher_setkey(child, key, keylen);
 crypto_skcipher_set_flags(parent, crypto_skcipher_get_flags(child) &
       CRYPTO_TFM_RES_MASK);

 return err;
}
