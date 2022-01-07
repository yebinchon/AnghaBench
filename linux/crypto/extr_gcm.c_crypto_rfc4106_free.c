
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aead_instance {int dummy; } ;


 int aead_instance_ctx (struct aead_instance*) ;
 int crypto_drop_aead (int ) ;
 int kfree (struct aead_instance*) ;

__attribute__((used)) static void crypto_rfc4106_free(struct aead_instance *inst)
{
 crypto_drop_aead(aead_instance_ctx(inst));
 kfree(inst);
}
