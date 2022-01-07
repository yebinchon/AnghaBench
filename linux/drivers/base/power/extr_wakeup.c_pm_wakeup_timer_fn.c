
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wakeup_source {int lock; int expire_count; scalar_t__ timer_expires; scalar_t__ active; } ;
struct timer_list {int dummy; } ;


 struct wakeup_source* from_timer (int ,struct timer_list*,int ) ;
 int jiffies ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_after_eq (int ,scalar_t__) ;
 int timer ;
 int wakeup_source_deactivate (struct wakeup_source*) ;
 struct wakeup_source* ws ;

__attribute__((used)) static void pm_wakeup_timer_fn(struct timer_list *t)
{
 struct wakeup_source *ws = from_timer(ws, t, timer);
 unsigned long flags;

 spin_lock_irqsave(&ws->lock, flags);

 if (ws->active && ws->timer_expires
     && time_after_eq(jiffies, ws->timer_expires)) {
  wakeup_source_deactivate(ws);
  ws->expire_count++;
 }

 spin_unlock_irqrestore(&ws->lock, flags);
}
