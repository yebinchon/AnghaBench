
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_skcipher {int base; } ;


 int blowfish_setkey (int *,int const*,unsigned int) ;

__attribute__((used)) static int blowfish_setkey_skcipher(struct crypto_skcipher *tfm,
        const u8 *key, unsigned int keylen)
{
 return blowfish_setkey(&tfm->base, key, keylen);
}
