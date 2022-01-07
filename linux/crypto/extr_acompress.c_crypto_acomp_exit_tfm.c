
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;
struct crypto_acomp {int dummy; } ;
struct acomp_alg {int (* exit ) (struct crypto_acomp*) ;} ;


 struct crypto_acomp* __crypto_acomp_tfm (struct crypto_tfm*) ;
 struct acomp_alg* crypto_acomp_alg (struct crypto_acomp*) ;
 int stub1 (struct crypto_acomp*) ;

__attribute__((used)) static void crypto_acomp_exit_tfm(struct crypto_tfm *tfm)
{
 struct crypto_acomp *acomp = __crypto_acomp_tfm(tfm);
 struct acomp_alg *alg = crypto_acomp_alg(acomp);

 alg->exit(acomp);
}
