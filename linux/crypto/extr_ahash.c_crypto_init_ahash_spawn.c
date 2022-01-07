
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_alg_common {int base; } ;
struct crypto_instance {int dummy; } ;
struct crypto_ahash_spawn {int base; } ;


 int crypto_ahash_type ;
 int crypto_init_spawn2 (int *,int *,struct crypto_instance*,int *) ;

int crypto_init_ahash_spawn(struct crypto_ahash_spawn *spawn,
       struct hash_alg_common *alg,
       struct crypto_instance *inst)
{
 return crypto_init_spawn2(&spawn->base, &alg->base, inst,
      &crypto_ahash_type);
}
