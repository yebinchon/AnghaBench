
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elevator_type {int * icq_cache; int list; } ;


 int elv_list_lock ;
 int kmem_cache_destroy (int *) ;
 int list_del_init (int *) ;
 int rcu_barrier () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void elv_unregister(struct elevator_type *e)
{

 spin_lock(&elv_list_lock);
 list_del_init(&e->list);
 spin_unlock(&elv_list_lock);





 if (e->icq_cache) {
  rcu_barrier();
  kmem_cache_destroy(e->icq_cache);
  e->icq_cache = ((void*)0);
 }
}
