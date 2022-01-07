
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_alg {unsigned int min_keysize; unsigned int max_keysize; int (* setkey ) (struct crypto_ablkcipher*,int const*,unsigned int) ;} ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 struct ablkcipher_alg* crypto_ablkcipher_alg (struct crypto_ablkcipher*) ;
 unsigned long crypto_ablkcipher_alignmask (struct crypto_ablkcipher*) ;
 int crypto_ablkcipher_set_flags (struct crypto_ablkcipher*,int ) ;
 int setkey_unaligned (struct crypto_ablkcipher*,int const*,unsigned int) ;
 int stub1 (struct crypto_ablkcipher*,int const*,unsigned int) ;

__attribute__((used)) static int setkey(struct crypto_ablkcipher *tfm, const u8 *key,
    unsigned int keylen)
{
 struct ablkcipher_alg *cipher = crypto_ablkcipher_alg(tfm);
 unsigned long alignmask = crypto_ablkcipher_alignmask(tfm);

 if (keylen < cipher->min_keysize || keylen > cipher->max_keysize) {
  crypto_ablkcipher_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }

 if ((unsigned long)key & alignmask)
  return setkey_unaligned(tfm, key, keylen);

 return cipher->setkey(tfm, key, keylen);
}
