
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ablkcipher_tfm {int ivsize; int base; int decrypt; int encrypt; int setkey; } ;
struct crypto_tfm {TYPE_1__* __crt_alg; struct ablkcipher_tfm crt_ablkcipher; } ;
struct blkcipher_alg {int ivsize; } ;
struct TYPE_2__ {struct blkcipher_alg cra_blkcipher; } ;


 int __crypto_ablkcipher_cast (struct crypto_tfm*) ;
 int async_decrypt ;
 int async_encrypt ;
 int async_setkey ;

__attribute__((used)) static int crypto_init_blkcipher_ops_async(struct crypto_tfm *tfm)
{
 struct ablkcipher_tfm *crt = &tfm->crt_ablkcipher;
 struct blkcipher_alg *alg = &tfm->__crt_alg->cra_blkcipher;

 crt->setkey = async_setkey;
 crt->encrypt = async_encrypt;
 crt->decrypt = async_decrypt;
 crt->base = __crypto_ablkcipher_cast(tfm);
 crt->ivsize = alg->ivsize;

 return 0;
}
