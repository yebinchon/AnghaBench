
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skcipher_instance {int dummy; } ;
struct TYPE_2__ {int skcipher_spawn; } ;
struct essiv_instance_ctx {TYPE_1__ u; } ;


 int crypto_drop_skcipher (int *) ;
 int kfree (struct skcipher_instance*) ;
 struct essiv_instance_ctx* skcipher_instance_ctx (struct skcipher_instance*) ;

__attribute__((used)) static void essiv_skcipher_free_instance(struct skcipher_instance *inst)
{
 struct essiv_instance_ctx *ictx = skcipher_instance_ctx(inst);

 crypto_drop_skcipher(&ictx->u.skcipher_spawn);
 kfree(inst);
}
