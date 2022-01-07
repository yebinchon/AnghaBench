
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct random_ready_callback {struct module* owner; int list; } ;
struct module {int dummy; } ;


 int list_del_init (int *) ;
 int list_empty (int *) ;
 int module_put (struct module*) ;
 int random_ready_list_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void del_random_ready_callback(struct random_ready_callback *rdy)
{
 unsigned long flags;
 struct module *owner = ((void*)0);

 spin_lock_irqsave(&random_ready_list_lock, flags);
 if (!list_empty(&rdy->list)) {
  list_del_init(&rdy->list);
  owner = rdy->owner;
 }
 spin_unlock_irqrestore(&random_ready_list_lock, flags);

 module_put(owner);
}
