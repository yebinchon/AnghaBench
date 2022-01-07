
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * function; } ;
struct wakeup_source {TYPE_1__ timer; int entry; } ;


 scalar_t__ WARN_ON (int) ;
 int del_timer_sync (TYPE_1__*) ;
 int events_lock ;
 int list_del_rcu (int *) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int synchronize_srcu (int *) ;
 int wakeup_srcu ;

void wakeup_source_remove(struct wakeup_source *ws)
{
 unsigned long flags;

 if (WARN_ON(!ws))
  return;

 raw_spin_lock_irqsave(&events_lock, flags);
 list_del_rcu(&ws->entry);
 raw_spin_unlock_irqrestore(&events_lock, flags);
 synchronize_srcu(&wakeup_srcu);

 del_timer_sync(&ws->timer);




 ws->timer.function = ((void*)0);
}
