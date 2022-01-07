
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_instance {int alg; } ;
struct crypto_template {int dummy; } ;


 int crypto_register_instance (struct crypto_template*,int ) ;
 int skcipher_crypto_instance (struct skcipher_instance*) ;
 int skcipher_prepare_alg (int *) ;

int skcipher_register_instance(struct crypto_template *tmpl,
      struct skcipher_instance *inst)
{
 int err;

 err = skcipher_prepare_alg(&inst->alg);
 if (err)
  return err;

 return crypto_register_instance(tmpl, skcipher_crypto_instance(inst));
}
