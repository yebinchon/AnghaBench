
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_alg {int cra_flags; int * cra_type; } ;
struct rng_alg {int seedsize; struct crypto_alg base; } ;


 int CRYPTO_ALG_TYPE_MASK ;
 int CRYPTO_ALG_TYPE_RNG ;
 int EINVAL ;
 int PAGE_SIZE ;
 int crypto_register_alg (struct crypto_alg*) ;
 int crypto_rng_type ;

int crypto_register_rng(struct rng_alg *alg)
{
 struct crypto_alg *base = &alg->base;

 if (alg->seedsize > PAGE_SIZE / 8)
  return -EINVAL;

 base->cra_type = &crypto_rng_type;
 base->cra_flags &= ~CRYPTO_ALG_TYPE_MASK;
 base->cra_flags |= CRYPTO_ALG_TYPE_RNG;

 return crypto_register_alg(base);
}
