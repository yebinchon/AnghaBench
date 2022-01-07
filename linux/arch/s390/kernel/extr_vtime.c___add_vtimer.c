
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtimer_list {int expires; int interval; } ;


 int internal_add_vtimer (struct vtimer_list*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int virt_timer_lock ;

__attribute__((used)) static void __add_vtimer(struct vtimer_list *timer, int periodic)
{
 unsigned long flags;

 timer->interval = periodic ? timer->expires : 0;
 spin_lock_irqsave(&virt_timer_lock, flags);
 internal_add_vtimer(timer);
 spin_unlock_irqrestore(&virt_timer_lock, flags);
}
