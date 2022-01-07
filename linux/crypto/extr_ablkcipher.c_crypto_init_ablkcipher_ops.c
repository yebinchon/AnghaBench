
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ablkcipher_tfm {int ivsize; int base; int decrypt; int encrypt; int setkey; } ;
struct crypto_tfm {struct ablkcipher_tfm crt_ablkcipher; TYPE_1__* __crt_alg; } ;
struct ablkcipher_alg {int ivsize; int decrypt; int encrypt; } ;
struct TYPE_2__ {struct ablkcipher_alg cra_ablkcipher; } ;


 int EINVAL ;
 int PAGE_SIZE ;
 int __crypto_ablkcipher_cast (struct crypto_tfm*) ;
 int setkey ;

__attribute__((used)) static int crypto_init_ablkcipher_ops(struct crypto_tfm *tfm, u32 type,
          u32 mask)
{
 struct ablkcipher_alg *alg = &tfm->__crt_alg->cra_ablkcipher;
 struct ablkcipher_tfm *crt = &tfm->crt_ablkcipher;

 if (alg->ivsize > PAGE_SIZE / 8)
  return -EINVAL;

 crt->setkey = setkey;
 crt->encrypt = alg->encrypt;
 crt->decrypt = alg->decrypt;
 crt->base = __crypto_ablkcipher_cast(tfm);
 crt->ivsize = alg->ivsize;

 return 0;
}
