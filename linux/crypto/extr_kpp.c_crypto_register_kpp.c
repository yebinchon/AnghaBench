
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_alg {int dummy; } ;
struct kpp_alg {struct crypto_alg base; } ;


 int crypto_register_alg (struct crypto_alg*) ;
 int kpp_prepare_alg (struct kpp_alg*) ;

int crypto_register_kpp(struct kpp_alg *alg)
{
 struct crypto_alg *base = &alg->base;

 kpp_prepare_alg(alg);
 return crypto_register_alg(base);
}
