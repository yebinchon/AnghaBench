
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_template {int dummy; } ;
struct aead_instance {int alg; } ;


 int aead_crypto_instance (struct aead_instance*) ;
 int aead_prepare_alg (int *) ;
 int crypto_register_instance (struct crypto_template*,int ) ;

int aead_register_instance(struct crypto_template *tmpl,
      struct aead_instance *inst)
{
 int err;

 err = aead_prepare_alg(&inst->alg);
 if (err)
  return err;

 return crypto_register_instance(tmpl, aead_crypto_instance(inst));
}
