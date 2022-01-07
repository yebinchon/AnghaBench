
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_skcipher {int dummy; } ;


 int chacha_setkey (struct crypto_skcipher*,int const*,unsigned int,int) ;

int crypto_chacha20_setkey(struct crypto_skcipher *tfm, const u8 *key,
      unsigned int keysize)
{
 return chacha_setkey(tfm, key, keysize, 20);
}
