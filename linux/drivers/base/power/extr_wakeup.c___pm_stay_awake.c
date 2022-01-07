
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wakeup_source {int lock; scalar_t__ timer_expires; int timer; } ;


 int del_timer (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wakeup_source_report_event (struct wakeup_source*,int) ;

void __pm_stay_awake(struct wakeup_source *ws)
{
 unsigned long flags;

 if (!ws)
  return;

 spin_lock_irqsave(&ws->lock, flags);

 wakeup_source_report_event(ws, 0);
 del_timer(&ws->timer);
 ws->timer_expires = 0;

 spin_unlock_irqrestore(&ws->lock, flags);
}
