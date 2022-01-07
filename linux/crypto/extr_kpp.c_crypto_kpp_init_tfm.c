
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kpp_alg {int (* init ) (struct crypto_kpp*) ;scalar_t__ exit; } ;
struct crypto_tfm {int dummy; } ;
struct TYPE_2__ {int exit; } ;
struct crypto_kpp {TYPE_1__ base; } ;


 struct crypto_kpp* __crypto_kpp_tfm (struct crypto_tfm*) ;
 struct kpp_alg* crypto_kpp_alg (struct crypto_kpp*) ;
 int crypto_kpp_exit_tfm ;
 int stub1 (struct crypto_kpp*) ;

__attribute__((used)) static int crypto_kpp_init_tfm(struct crypto_tfm *tfm)
{
 struct crypto_kpp *kpp = __crypto_kpp_tfm(tfm);
 struct kpp_alg *alg = crypto_kpp_alg(kpp);

 if (alg->exit)
  kpp->base.exit = crypto_kpp_exit_tfm;

 if (alg->init)
  return alg->init(kpp);

 return 0;
}
