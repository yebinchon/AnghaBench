
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_skcipher {int dummy; } ;


 int __serpent_setkey (int ,int const*,unsigned int) ;
 int crypto_skcipher_ctx (struct crypto_skcipher*) ;

__attribute__((used)) static int serpent_setkey_skcipher(struct crypto_skcipher *tfm,
       const u8 *key, unsigned int keylen)
{
 return __serpent_setkey(crypto_skcipher_ctx(tfm), key, keylen);
}
