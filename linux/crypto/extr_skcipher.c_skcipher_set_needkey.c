
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_skcipher {scalar_t__ keysize; } ;


 int CRYPTO_TFM_NEED_KEY ;
 int crypto_skcipher_set_flags (struct crypto_skcipher*,int ) ;

__attribute__((used)) static void skcipher_set_needkey(struct crypto_skcipher *tfm)
{
 if (tfm->keysize)
  crypto_skcipher_set_flags(tfm, CRYPTO_TFM_NEED_KEY);
}
