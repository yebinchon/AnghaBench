
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_instance {int dummy; } ;


 int crypto_drop_skcipher (int ) ;
 int kfree (struct skcipher_instance*) ;
 int skcipher_instance_ctx (struct skcipher_instance*) ;

__attribute__((used)) static void crypto_cts_free(struct skcipher_instance *inst)
{
 crypto_drop_skcipher(skcipher_instance_ctx(inst));
 kfree(inst);
}
