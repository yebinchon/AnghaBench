
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aead_spawn; } ;
struct essiv_instance_ctx {TYPE_1__ u; } ;
struct aead_instance {int dummy; } ;


 struct essiv_instance_ctx* aead_instance_ctx (struct aead_instance*) ;
 int crypto_drop_aead (int *) ;
 int kfree (struct aead_instance*) ;

__attribute__((used)) static void essiv_aead_free_instance(struct aead_instance *inst)
{
 struct essiv_instance_ctx *ictx = aead_instance_ctx(inst);

 crypto_drop_aead(&ictx->u.aead_spawn);
 kfree(inst);
}
