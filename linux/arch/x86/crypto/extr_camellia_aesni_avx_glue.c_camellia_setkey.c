
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int crt_flags; } ;
struct crypto_skcipher {TYPE_1__ base; } ;


 int __camellia_setkey (int ,int const*,unsigned int,int *) ;
 int crypto_skcipher_ctx (struct crypto_skcipher*) ;

__attribute__((used)) static int camellia_setkey(struct crypto_skcipher *tfm, const u8 *key,
      unsigned int keylen)
{
 return __camellia_setkey(crypto_skcipher_ctx(tfm), key, keylen,
     &tfm->base.crt_flags);
}
