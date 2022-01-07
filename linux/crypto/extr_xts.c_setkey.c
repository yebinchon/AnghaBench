
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct priv {struct crypto_skcipher* child; struct crypto_cipher* tweak; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_cipher {int dummy; } ;


 int CRYPTO_TFM_REQ_MASK ;
 int CRYPTO_TFM_RES_MASK ;
 int crypto_cipher_clear_flags (struct crypto_cipher*,int) ;
 int crypto_cipher_get_flags (struct crypto_cipher*) ;
 int crypto_cipher_set_flags (struct crypto_cipher*,int) ;
 int crypto_cipher_setkey (struct crypto_cipher*,int const*,unsigned int) ;
 int crypto_skcipher_clear_flags (struct crypto_skcipher*,int) ;
 struct priv* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int crypto_skcipher_get_flags (struct crypto_skcipher*) ;
 int crypto_skcipher_set_flags (struct crypto_skcipher*,int) ;
 int crypto_skcipher_setkey (struct crypto_skcipher*,int const*,unsigned int) ;
 int xts_verify_key (struct crypto_skcipher*,int const*,unsigned int) ;

__attribute__((used)) static int setkey(struct crypto_skcipher *parent, const u8 *key,
    unsigned int keylen)
{
 struct priv *ctx = crypto_skcipher_ctx(parent);
 struct crypto_skcipher *child;
 struct crypto_cipher *tweak;
 int err;

 err = xts_verify_key(parent, key, keylen);
 if (err)
  return err;

 keylen /= 2;






 tweak = ctx->tweak;
 crypto_cipher_clear_flags(tweak, CRYPTO_TFM_REQ_MASK);
 crypto_cipher_set_flags(tweak, crypto_skcipher_get_flags(parent) &
           CRYPTO_TFM_REQ_MASK);
 err = crypto_cipher_setkey(tweak, key + keylen, keylen);
 crypto_skcipher_set_flags(parent, crypto_cipher_get_flags(tweak) &
       CRYPTO_TFM_RES_MASK);
 if (err)
  return err;


 child = ctx->child;
 crypto_skcipher_clear_flags(child, CRYPTO_TFM_REQ_MASK);
 crypto_skcipher_set_flags(child, crypto_skcipher_get_flags(parent) &
      CRYPTO_TFM_REQ_MASK);
 err = crypto_skcipher_setkey(child, key, keylen);
 crypto_skcipher_set_flags(parent, crypto_skcipher_get_flags(child) &
       CRYPTO_TFM_RES_MASK);

 return err;
}
