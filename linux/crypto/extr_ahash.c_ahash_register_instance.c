
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_template {int dummy; } ;
struct ahash_instance {int alg; } ;


 int ahash_crypto_instance (struct ahash_instance*) ;
 int ahash_prepare_alg (int *) ;
 int crypto_register_instance (struct crypto_template*,int ) ;

int ahash_register_instance(struct crypto_template *tmpl,
       struct ahash_instance *inst)
{
 int err;

 err = ahash_prepare_alg(&inst->alg);
 if (err)
  return err;

 return crypto_register_instance(tmpl, ahash_crypto_instance(inst));
}
