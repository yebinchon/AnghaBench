
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct vtimer_list {scalar_t__ expires; scalar_t__ interval; int entry; int function; } ;


 int BUG_ON (int) ;
 int internal_add_vtimer (struct vtimer_list*) ;
 int list_del_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int virt_timer_lock ;
 int vtimer_pending (struct vtimer_list*) ;

__attribute__((used)) static int __mod_vtimer(struct vtimer_list *timer, u64 expires, int periodic)
{
 unsigned long flags;
 int rc;

 BUG_ON(!timer->function);

 if (timer->expires == expires && vtimer_pending(timer))
  return 1;
 spin_lock_irqsave(&virt_timer_lock, flags);
 rc = vtimer_pending(timer);
 if (rc)
  list_del_init(&timer->entry);
 timer->interval = periodic ? expires : 0;
 timer->expires = expires;
 internal_add_vtimer(timer);
 spin_unlock_irqrestore(&virt_timer_lock, flags);
 return rc;
}
