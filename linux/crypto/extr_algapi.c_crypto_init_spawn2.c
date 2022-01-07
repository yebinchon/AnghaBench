
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_type {int type; int maskset; } ;
struct crypto_spawn {struct crypto_type const* frontend; } ;
struct crypto_instance {int dummy; } ;
struct crypto_alg {int cra_flags; } ;


 int EINVAL ;
 int crypto_init_spawn (struct crypto_spawn*,struct crypto_alg*,struct crypto_instance*,int) ;

int crypto_init_spawn2(struct crypto_spawn *spawn, struct crypto_alg *alg,
         struct crypto_instance *inst,
         const struct crypto_type *frontend)
{
 int err = -EINVAL;

 if ((alg->cra_flags ^ frontend->type) & frontend->maskset)
  goto out;

 spawn->frontend = frontend;
 err = crypto_init_spawn(spawn, alg, inst, frontend->maskset);

out:
 return err;
}
