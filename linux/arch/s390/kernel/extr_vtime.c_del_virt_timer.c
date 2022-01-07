
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtimer_list {int entry; } ;


 int list_del_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int virt_timer_lock ;
 int vtimer_pending (struct vtimer_list*) ;

int del_virt_timer(struct vtimer_list *timer)
{
 unsigned long flags;

 if (!vtimer_pending(timer))
  return 0;
 spin_lock_irqsave(&virt_timer_lock, flags);
 list_del_init(&timer->entry);
 spin_unlock_irqrestore(&virt_timer_lock, flags);
 return 1;
}
