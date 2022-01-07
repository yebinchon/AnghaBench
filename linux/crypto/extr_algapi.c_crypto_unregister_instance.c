
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_instance {int alg; } ;


 int LIST_HEAD (int ) ;
 int crypto_alg_sem ;
 int crypto_remove_final (int *) ;
 int crypto_remove_instance (struct crypto_instance*,int *) ;
 int crypto_remove_spawns (int *,int *,int *) ;
 int down_write (int *) ;
 int list ;
 int up_write (int *) ;

int crypto_unregister_instance(struct crypto_instance *inst)
{
 LIST_HEAD(list);

 down_write(&crypto_alg_sem);

 crypto_remove_spawns(&inst->alg, &list, ((void*)0));
 crypto_remove_instance(inst, &list);

 up_write(&crypto_alg_sem);

 crypto_remove_final(&list);

 return 0;
}
