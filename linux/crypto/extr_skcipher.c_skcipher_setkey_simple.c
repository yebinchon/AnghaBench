
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_skcipher {int dummy; } ;
struct crypto_cipher {int dummy; } ;


 int CRYPTO_TFM_REQ_MASK ;
 int CRYPTO_TFM_RES_MASK ;
 int crypto_cipher_clear_flags (struct crypto_cipher*,int) ;
 int crypto_cipher_get_flags (struct crypto_cipher*) ;
 int crypto_cipher_set_flags (struct crypto_cipher*,int) ;
 int crypto_cipher_setkey (struct crypto_cipher*,int const*,unsigned int) ;
 int crypto_skcipher_get_flags (struct crypto_skcipher*) ;
 int crypto_skcipher_set_flags (struct crypto_skcipher*,int) ;
 struct crypto_cipher* skcipher_cipher_simple (struct crypto_skcipher*) ;

__attribute__((used)) static int skcipher_setkey_simple(struct crypto_skcipher *tfm, const u8 *key,
      unsigned int keylen)
{
 struct crypto_cipher *cipher = skcipher_cipher_simple(tfm);
 int err;

 crypto_cipher_clear_flags(cipher, CRYPTO_TFM_REQ_MASK);
 crypto_cipher_set_flags(cipher, crypto_skcipher_get_flags(tfm) &
    CRYPTO_TFM_REQ_MASK);
 err = crypto_cipher_setkey(cipher, key, keylen);
 crypto_skcipher_set_flags(tfm, crypto_cipher_get_flags(cipher) &
      CRYPTO_TFM_RES_MASK);
 return err;
}
