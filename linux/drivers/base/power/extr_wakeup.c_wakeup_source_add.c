
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wakeup_source {int active; int entry; int timer; int lock; } ;


 scalar_t__ WARN_ON (int) ;
 int events_lock ;
 int list_add_rcu (int *,int *) ;
 int pm_wakeup_timer_fn ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int wakeup_sources ;

void wakeup_source_add(struct wakeup_source *ws)
{
 unsigned long flags;

 if (WARN_ON(!ws))
  return;

 spin_lock_init(&ws->lock);
 timer_setup(&ws->timer, pm_wakeup_timer_fn, 0);
 ws->active = 0;

 raw_spin_lock_irqsave(&events_lock, flags);
 list_add_rcu(&ws->entry, &wakeup_sources);
 raw_spin_unlock_irqrestore(&events_lock, flags);
}
