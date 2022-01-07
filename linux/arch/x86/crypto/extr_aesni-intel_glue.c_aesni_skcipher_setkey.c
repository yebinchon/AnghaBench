
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_skcipher {int dummy; } ;


 int aes_set_key_common (int ,int ,int const*,unsigned int) ;
 int crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int crypto_skcipher_tfm (struct crypto_skcipher*) ;

__attribute__((used)) static int aesni_skcipher_setkey(struct crypto_skcipher *tfm, const u8 *key,
            unsigned int len)
{
 return aes_set_key_common(crypto_skcipher_tfm(tfm),
      crypto_skcipher_ctx(tfm), key, len);
}
