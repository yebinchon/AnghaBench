
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct skcipher_alg {unsigned int min_keysize; unsigned int max_keysize; int (* setkey ) (struct crypto_skcipher*,int const*,unsigned int) ;} ;
struct crypto_skcipher {int dummy; } ;


 int CRYPTO_TFM_NEED_KEY ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 struct skcipher_alg* crypto_skcipher_alg (struct crypto_skcipher*) ;
 unsigned long crypto_skcipher_alignmask (struct crypto_skcipher*) ;
 int crypto_skcipher_clear_flags (struct crypto_skcipher*,int ) ;
 int crypto_skcipher_set_flags (struct crypto_skcipher*,int ) ;
 int skcipher_set_needkey (struct crypto_skcipher*) ;
 int skcipher_setkey_unaligned (struct crypto_skcipher*,int const*,unsigned int) ;
 int stub1 (struct crypto_skcipher*,int const*,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int skcipher_setkey(struct crypto_skcipher *tfm, const u8 *key,
      unsigned int keylen)
{
 struct skcipher_alg *cipher = crypto_skcipher_alg(tfm);
 unsigned long alignmask = crypto_skcipher_alignmask(tfm);
 int err;

 if (keylen < cipher->min_keysize || keylen > cipher->max_keysize) {
  crypto_skcipher_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }

 if ((unsigned long)key & alignmask)
  err = skcipher_setkey_unaligned(tfm, key, keylen);
 else
  err = cipher->setkey(tfm, key, keylen);

 if (unlikely(err)) {
  skcipher_set_needkey(tfm);
  return err;
 }

 crypto_skcipher_clear_flags(tfm, CRYPTO_TFM_NEED_KEY);
 return 0;
}
