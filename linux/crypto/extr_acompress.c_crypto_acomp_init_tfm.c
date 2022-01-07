
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct crypto_tfm {TYPE_2__* __crt_alg; } ;
struct TYPE_3__ {int exit; } ;
struct crypto_acomp {TYPE_1__ base; int reqsize; int dst_free; int decompress; int compress; } ;
struct acomp_alg {int (* init ) (struct crypto_acomp*) ;scalar_t__ exit; int reqsize; int dst_free; int decompress; int compress; } ;
struct TYPE_4__ {int * cra_type; } ;


 struct crypto_acomp* __crypto_acomp_tfm (struct crypto_tfm*) ;
 struct acomp_alg* crypto_acomp_alg (struct crypto_acomp*) ;
 int crypto_acomp_exit_tfm ;
 int crypto_acomp_type ;
 int crypto_init_scomp_ops_async (struct crypto_tfm*) ;
 int stub1 (struct crypto_acomp*) ;

__attribute__((used)) static int crypto_acomp_init_tfm(struct crypto_tfm *tfm)
{
 struct crypto_acomp *acomp = __crypto_acomp_tfm(tfm);
 struct acomp_alg *alg = crypto_acomp_alg(acomp);

 if (tfm->__crt_alg->cra_type != &crypto_acomp_type)
  return crypto_init_scomp_ops_async(tfm);

 acomp->compress = alg->compress;
 acomp->decompress = alg->decompress;
 acomp->dst_free = alg->dst_free;
 acomp->reqsize = alg->reqsize;

 if (alg->exit)
  acomp->base.exit = crypto_acomp_exit_tfm;

 if (alg->init)
  return alg->init(acomp);

 return 0;
}
