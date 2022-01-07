
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_lock; int rpm_status; int dev; } ;


 int RPM_ACTIVE ;
 int RPM_SUSPENDED ;
 int blk_clear_pm_only (struct request_queue*) ;
 int pm_request_autosuspend (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void blk_post_runtime_resume(struct request_queue *q, int err)
{
 if (!q->dev)
  return;

 spin_lock_irq(&q->queue_lock);
 if (!err) {
  q->rpm_status = RPM_ACTIVE;
  pm_runtime_mark_last_busy(q->dev);
  pm_request_autosuspend(q->dev);
 } else {
  q->rpm_status = RPM_SUSPENDED;
 }
 spin_unlock_irq(&q->queue_lock);

 if (!err)
  blk_clear_pm_only(q);
}
