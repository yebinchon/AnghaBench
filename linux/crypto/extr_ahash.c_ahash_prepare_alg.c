
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_alg {int cra_flags; int * cra_type; } ;
struct TYPE_2__ {scalar_t__ digestsize; scalar_t__ statesize; struct crypto_alg base; } ;
struct ahash_alg {TYPE_1__ halg; } ;


 int CRYPTO_ALG_TYPE_AHASH ;
 int CRYPTO_ALG_TYPE_MASK ;
 int EINVAL ;
 scalar_t__ HASH_MAX_DIGESTSIZE ;
 scalar_t__ HASH_MAX_STATESIZE ;
 int crypto_ahash_type ;

__attribute__((used)) static int ahash_prepare_alg(struct ahash_alg *alg)
{
 struct crypto_alg *base = &alg->halg.base;

 if (alg->halg.digestsize > HASH_MAX_DIGESTSIZE ||
     alg->halg.statesize > HASH_MAX_STATESIZE ||
     alg->halg.statesize == 0)
  return -EINVAL;

 base->cra_type = &crypto_ahash_type;
 base->cra_flags &= ~CRYPTO_ALG_TYPE_MASK;
 base->cra_flags |= CRYPTO_ALG_TYPE_AHASH;

 return 0;
}
