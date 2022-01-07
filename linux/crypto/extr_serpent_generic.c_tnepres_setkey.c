
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_tfm {int dummy; } ;


 int SERPENT_MAX_KEY_SIZE ;
 int serpent_setkey (struct crypto_tfm*,int *,unsigned int) ;

__attribute__((used)) static int tnepres_setkey(struct crypto_tfm *tfm, const u8 *key,
     unsigned int keylen)
{
 u8 rev_key[SERPENT_MAX_KEY_SIZE];
 int i;

 for (i = 0; i < keylen; ++i)
  rev_key[keylen - i - 1] = key[i];

 return serpent_setkey(tfm, rev_key, keylen);
}
