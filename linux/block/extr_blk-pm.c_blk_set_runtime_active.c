
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_lock; scalar_t__ dev; int rpm_status; } ;


 int RPM_ACTIVE ;
 int pm_request_autosuspend (scalar_t__) ;
 int pm_runtime_mark_last_busy (scalar_t__) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void blk_set_runtime_active(struct request_queue *q)
{
 if (q->dev) {
  spin_lock_irq(&q->queue_lock);
  q->rpm_status = RPM_ACTIVE;
  pm_runtime_mark_last_busy(q->dev);
  pm_request_autosuspend(q->dev);
  spin_unlock_irq(&q->queue_lock);
 }
}
