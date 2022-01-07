
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kpp_alg {int (* exit ) (struct crypto_kpp*) ;} ;
struct crypto_tfm {int dummy; } ;
struct crypto_kpp {int dummy; } ;


 struct crypto_kpp* __crypto_kpp_tfm (struct crypto_tfm*) ;
 struct kpp_alg* crypto_kpp_alg (struct crypto_kpp*) ;
 int stub1 (struct crypto_kpp*) ;

__attribute__((used)) static void crypto_kpp_exit_tfm(struct crypto_tfm *tfm)
{
 struct crypto_kpp *kpp = __crypto_kpp_tfm(tfm);
 struct kpp_alg *alg = crypto_kpp_alg(kpp);

 alg->exit(kpp);
}
