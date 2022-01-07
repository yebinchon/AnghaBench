
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* cra_type; } ;
struct crypto_instance {TYPE_3__ alg; TYPE_1__* tmpl; } ;
struct TYPE_5__ {int (* free ) (struct crypto_instance*) ;} ;
struct TYPE_4__ {int (* free ) (struct crypto_instance*) ;} ;


 int stub1 (struct crypto_instance*) ;
 int stub2 (struct crypto_instance*) ;

__attribute__((used)) static void crypto_free_instance(struct crypto_instance *inst)
{
 if (!inst->alg.cra_type->free) {
  inst->tmpl->free(inst);
  return;
 }

 inst->alg.cra_type->free(inst);
}
