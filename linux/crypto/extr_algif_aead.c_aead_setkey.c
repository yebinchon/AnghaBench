
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct aead_tfm {int aead; } ;


 int crypto_aead_setkey (int ,int const*,unsigned int) ;

__attribute__((used)) static int aead_setkey(void *private, const u8 *key, unsigned int keylen)
{
 struct aead_tfm *tfm = private;

 return crypto_aead_setkey(tfm->aead, key, keylen);
}
