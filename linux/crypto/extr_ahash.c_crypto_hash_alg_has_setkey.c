
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_alg {int * cra_type; } ;
struct hash_alg_common {struct crypto_alg base; } ;
struct TYPE_2__ {int * setkey; } ;


 TYPE_1__* __crypto_ahash_alg (struct crypto_alg*) ;
 int __crypto_shash_alg (struct crypto_alg*) ;
 int crypto_ahash_type ;
 int crypto_shash_alg_has_setkey (int ) ;

bool crypto_hash_alg_has_setkey(struct hash_alg_common *halg)
{
 struct crypto_alg *alg = &halg->base;

 if (alg->cra_type != &crypto_ahash_type)
  return crypto_shash_alg_has_setkey(__crypto_shash_alg(alg));

 return __crypto_ahash_alg(alg)->setkey != ((void*)0);
}
