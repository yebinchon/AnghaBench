
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct crypto_tfm {int crt_flags; TYPE_1__* __crt_alg; } ;
struct blkcipher_alg {unsigned int min_keysize; unsigned int max_keysize; int (* setkey ) (struct crypto_tfm*,int const*,unsigned int) ;} ;
struct TYPE_2__ {struct blkcipher_alg cra_blkcipher; } ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 unsigned long crypto_tfm_alg_alignmask (struct crypto_tfm*) ;
 int setkey_unaligned (struct crypto_tfm*,int const*,unsigned int) ;
 int stub1 (struct crypto_tfm*,int const*,unsigned int) ;

__attribute__((used)) static int setkey(struct crypto_tfm *tfm, const u8 *key, unsigned int keylen)
{
 struct blkcipher_alg *cipher = &tfm->__crt_alg->cra_blkcipher;
 unsigned long alignmask = crypto_tfm_alg_alignmask(tfm);

 if (keylen < cipher->min_keysize || keylen > cipher->max_keysize) {
  tfm->crt_flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
  return -EINVAL;
 }

 if ((unsigned long)key & alignmask)
  return setkey_unaligned(tfm, key, keylen);

 return cipher->setkey(tfm, key, keylen);
}
