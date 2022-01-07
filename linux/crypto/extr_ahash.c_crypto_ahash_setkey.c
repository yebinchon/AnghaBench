
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_ahash {int (* setkey ) (struct crypto_ahash*,int const*,unsigned int) ;} ;


 int CRYPTO_TFM_NEED_KEY ;
 int ahash_set_needkey (struct crypto_ahash*) ;
 int ahash_setkey_unaligned (struct crypto_ahash*,int const*,unsigned int) ;
 unsigned long crypto_ahash_alignmask (struct crypto_ahash*) ;
 int crypto_ahash_clear_flags (struct crypto_ahash*,int ) ;
 int stub1 (struct crypto_ahash*,int const*,unsigned int) ;
 scalar_t__ unlikely (int) ;

int crypto_ahash_setkey(struct crypto_ahash *tfm, const u8 *key,
   unsigned int keylen)
{
 unsigned long alignmask = crypto_ahash_alignmask(tfm);
 int err;

 if ((unsigned long)key & alignmask)
  err = ahash_setkey_unaligned(tfm, key, keylen);
 else
  err = tfm->setkey(tfm, key, keylen);

 if (unlikely(err)) {
  ahash_set_needkey(tfm);
  return err;
 }

 crypto_ahash_clear_flags(tfm, CRYPTO_TFM_NEED_KEY);
 return 0;
}
