
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_alg {int dummy; } ;
struct shash_alg {struct crypto_alg base; } ;


 int crypto_register_alg (struct crypto_alg*) ;
 int shash_prepare_alg (struct shash_alg*) ;

int crypto_register_shash(struct shash_alg *alg)
{
 struct crypto_alg *base = &alg->base;
 int err;

 err = shash_prepare_alg(alg);
 if (err)
  return err;

 return crypto_register_alg(base);
}
