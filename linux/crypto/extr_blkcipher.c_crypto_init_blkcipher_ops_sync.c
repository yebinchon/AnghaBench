
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct blkcipher_tfm {void* iv; int decrypt; int encrypt; int setkey; } ;
struct crypto_tfm {TYPE_1__* __crt_alg; struct blkcipher_tfm crt_blkcipher; } ;
struct blkcipher_alg {int decrypt; int encrypt; } ;
struct TYPE_2__ {unsigned long cra_ctxsize; struct blkcipher_alg cra_blkcipher; } ;


 unsigned long ALIGN (unsigned long,unsigned long) ;
 int crypto_tfm_alg_alignmask (struct crypto_tfm*) ;
 scalar_t__ crypto_tfm_ctx (struct crypto_tfm*) ;
 int setkey ;

__attribute__((used)) static int crypto_init_blkcipher_ops_sync(struct crypto_tfm *tfm)
{
 struct blkcipher_tfm *crt = &tfm->crt_blkcipher;
 struct blkcipher_alg *alg = &tfm->__crt_alg->cra_blkcipher;
 unsigned long align = crypto_tfm_alg_alignmask(tfm) + 1;
 unsigned long addr;

 crt->setkey = setkey;
 crt->encrypt = alg->encrypt;
 crt->decrypt = alg->decrypt;

 addr = (unsigned long)crypto_tfm_ctx(tfm);
 addr = ALIGN(addr, align);
 addr += ALIGN(tfm->__crt_alg->cra_ctxsize, align);
 crt->iv = (void *)addr;

 return 0;
}
