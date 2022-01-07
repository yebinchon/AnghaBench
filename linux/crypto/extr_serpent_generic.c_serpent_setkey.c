
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_tfm {int dummy; } ;


 int __serpent_setkey (int ,int const*,unsigned int) ;
 int crypto_tfm_ctx (struct crypto_tfm*) ;

int serpent_setkey(struct crypto_tfm *tfm, const u8 *key, unsigned int keylen)
{
 return __serpent_setkey(crypto_tfm_ctx(tfm), key, keylen);
}
