
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_tfm {int crt_flags; } ;


 int __cast6_setkey (int ,int const*,unsigned int,int *) ;
 int crypto_tfm_ctx (struct crypto_tfm*) ;

int cast6_setkey(struct crypto_tfm *tfm, const u8 *key, unsigned int keylen)
{
 return __cast6_setkey(crypto_tfm_ctx(tfm), key, keylen,
         &tfm->crt_flags);
}
