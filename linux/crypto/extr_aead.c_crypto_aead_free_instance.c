
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_instance {TYPE_1__* tmpl; } ;
struct aead_instance {int (* free ) (struct aead_instance*) ;} ;
struct TYPE_2__ {int (* free ) (struct crypto_instance*) ;} ;


 struct aead_instance* aead_instance (struct crypto_instance*) ;
 int stub1 (struct crypto_instance*) ;
 int stub2 (struct aead_instance*) ;

__attribute__((used)) static void crypto_aead_free_instance(struct crypto_instance *inst)
{
 struct aead_instance *aead = aead_instance(inst);

 if (!aead->free) {
  inst->tmpl->free(inst);
  return;
 }

 aead->free(aead);
}
