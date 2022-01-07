
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_instance {int alg; } ;
struct crypto_template {int dummy; } ;


 int crypto_register_instance (struct crypto_template*,int ) ;
 int shash_crypto_instance (struct shash_instance*) ;
 int shash_prepare_alg (int *) ;

int shash_register_instance(struct crypto_template *tmpl,
       struct shash_instance *inst)
{
 int err;

 err = shash_prepare_alg(&inst->alg);
 if (err)
  return err;

 return crypto_register_instance(tmpl, shash_crypto_instance(inst));
}
