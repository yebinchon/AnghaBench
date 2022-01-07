
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_template {int dummy; } ;
struct akcipher_instance {int alg; } ;


 int akcipher_crypto_instance (struct akcipher_instance*) ;
 int akcipher_prepare_alg (int *) ;
 int crypto_register_instance (struct crypto_template*,int ) ;

int akcipher_register_instance(struct crypto_template *tmpl,
          struct akcipher_instance *inst)
{
 akcipher_prepare_alg(&inst->alg);
 return crypto_register_instance(tmpl, akcipher_crypto_instance(inst));
}
