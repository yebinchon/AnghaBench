
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dbe_list; } ;
struct module {TYPE_1__ arch; } ;


 int dbe_lock ;
 int list_del (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void module_arch_cleanup(struct module *mod)
{
 spin_lock_irq(&dbe_lock);
 list_del(&mod->arch.dbe_list);
 spin_unlock_irq(&dbe_lock);
}
