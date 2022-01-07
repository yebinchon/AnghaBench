
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wakeup_source {int lock; scalar_t__ active; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wakeup_source_deactivate (struct wakeup_source*) ;

void __pm_relax(struct wakeup_source *ws)
{
 unsigned long flags;

 if (!ws)
  return;

 spin_lock_irqsave(&ws->lock, flags);
 if (ws->active)
  wakeup_source_deactivate(ws);
 spin_unlock_irqrestore(&ws->lock, flags);
}
