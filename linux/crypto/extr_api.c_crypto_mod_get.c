
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_alg {int cra_module; } ;


 struct crypto_alg* crypto_alg_get (struct crypto_alg*) ;
 scalar_t__ try_module_get (int ) ;

struct crypto_alg *crypto_mod_get(struct crypto_alg *alg)
{
 return try_module_get(alg->cra_module) ? crypto_alg_get(alg) : ((void*)0);
}
