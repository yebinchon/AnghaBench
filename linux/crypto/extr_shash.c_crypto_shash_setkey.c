
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_alg {int (* setkey ) (struct crypto_shash*,int const*,unsigned int) ;} ;
struct crypto_shash {int dummy; } ;


 int CRYPTO_TFM_NEED_KEY ;
 struct shash_alg* crypto_shash_alg (struct crypto_shash*) ;
 unsigned long crypto_shash_alignmask (struct crypto_shash*) ;
 int crypto_shash_clear_flags (struct crypto_shash*,int ) ;
 int shash_set_needkey (struct crypto_shash*,struct shash_alg*) ;
 int shash_setkey_unaligned (struct crypto_shash*,int const*,unsigned int) ;
 int stub1 (struct crypto_shash*,int const*,unsigned int) ;
 scalar_t__ unlikely (int) ;

int crypto_shash_setkey(struct crypto_shash *tfm, const u8 *key,
   unsigned int keylen)
{
 struct shash_alg *shash = crypto_shash_alg(tfm);
 unsigned long alignmask = crypto_shash_alignmask(tfm);
 int err;

 if ((unsigned long)key & alignmask)
  err = shash_setkey_unaligned(tfm, key, keylen);
 else
  err = shash->setkey(tfm, key, keylen);

 if (unlikely(err)) {
  shash_set_needkey(tfm, shash);
  return err;
 }

 crypto_shash_clear_flags(tfm, CRYPTO_TFM_NEED_KEY);
 return 0;
}
