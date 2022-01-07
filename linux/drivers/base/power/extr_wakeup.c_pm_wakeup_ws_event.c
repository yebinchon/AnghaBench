
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wakeup_source {unsigned long timer_expires; int lock; int timer; } ;


 unsigned long jiffies ;
 int mod_timer (int *,unsigned long) ;
 unsigned long msecs_to_jiffies (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int wakeup_source_deactivate (struct wakeup_source*) ;
 int wakeup_source_report_event (struct wakeup_source*,int) ;

void pm_wakeup_ws_event(struct wakeup_source *ws, unsigned int msec, bool hard)
{
 unsigned long flags;
 unsigned long expires;

 if (!ws)
  return;

 spin_lock_irqsave(&ws->lock, flags);

 wakeup_source_report_event(ws, hard);

 if (!msec) {
  wakeup_source_deactivate(ws);
  goto unlock;
 }

 expires = jiffies + msecs_to_jiffies(msec);
 if (!expires)
  expires = 1;

 if (!ws->timer_expires || time_after(expires, ws->timer_expires)) {
  mod_timer(&ws->timer, expires);
  ws->timer_expires = expires;
 }

 unlock:
 spin_unlock_irqrestore(&ws->lock, flags);
}
