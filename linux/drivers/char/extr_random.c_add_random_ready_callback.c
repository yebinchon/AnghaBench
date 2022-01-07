
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct random_ready_callback {int list; struct module* owner; } ;
struct module {int dummy; } ;


 int EALREADY ;
 int ENOENT ;
 scalar_t__ crng_ready () ;
 int list_add (int *,int *) ;
 int module_put (struct module*) ;
 int random_ready_list ;
 int random_ready_list_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int try_module_get (struct module*) ;

int add_random_ready_callback(struct random_ready_callback *rdy)
{
 struct module *owner;
 unsigned long flags;
 int err = -EALREADY;

 if (crng_ready())
  return err;

 owner = rdy->owner;
 if (!try_module_get(owner))
  return -ENOENT;

 spin_lock_irqsave(&random_ready_list_lock, flags);
 if (crng_ready())
  goto out;

 owner = ((void*)0);

 list_add(&rdy->list, &random_ready_list);
 err = 0;

out:
 spin_unlock_irqrestore(&random_ready_list_lock, flags);

 module_put(owner);

 return err;
}
