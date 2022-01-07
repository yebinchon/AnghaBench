
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct undef_hook {int node; } ;


 int list_add (int *,int *) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int undef_hook ;
 int undef_lock ;

void register_undef_hook(struct undef_hook *hook)
{
 unsigned long flags;

 raw_spin_lock_irqsave(&undef_lock, flags);
 list_add(&hook->node, &undef_hook);
 raw_spin_unlock_irqrestore(&undef_lock, flags);
}
