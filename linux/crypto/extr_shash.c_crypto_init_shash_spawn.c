
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_alg {int base; } ;
struct crypto_shash_spawn {int base; } ;
struct crypto_instance {int dummy; } ;


 int crypto_init_spawn2 (int *,int *,struct crypto_instance*,int *) ;
 int crypto_shash_type ;

int crypto_init_shash_spawn(struct crypto_shash_spawn *spawn,
       struct shash_alg *alg,
       struct crypto_instance *inst)
{
 return crypto_init_spawn2(&spawn->base, &alg->base, inst,
      &crypto_shash_type);
}
