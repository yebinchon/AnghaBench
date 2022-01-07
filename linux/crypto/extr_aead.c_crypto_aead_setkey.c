
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {int (* setkey ) (struct crypto_aead*,int const*,unsigned int) ;} ;


 int CRYPTO_TFM_NEED_KEY ;
 TYPE_1__* crypto_aead_alg (struct crypto_aead*) ;
 unsigned long crypto_aead_alignmask (struct crypto_aead*) ;
 int crypto_aead_clear_flags (struct crypto_aead*,int ) ;
 int crypto_aead_set_flags (struct crypto_aead*,int ) ;
 int setkey_unaligned (struct crypto_aead*,int const*,unsigned int) ;
 int stub1 (struct crypto_aead*,int const*,unsigned int) ;
 scalar_t__ unlikely (int) ;

int crypto_aead_setkey(struct crypto_aead *tfm,
         const u8 *key, unsigned int keylen)
{
 unsigned long alignmask = crypto_aead_alignmask(tfm);
 int err;

 if ((unsigned long)key & alignmask)
  err = setkey_unaligned(tfm, key, keylen);
 else
  err = crypto_aead_alg(tfm)->setkey(tfm, key, keylen);

 if (unlikely(err)) {
  crypto_aead_set_flags(tfm, CRYPTO_TFM_NEED_KEY);
  return err;
 }

 crypto_aead_clear_flags(tfm, CRYPTO_TFM_NEED_KEY);
 return 0;
}
