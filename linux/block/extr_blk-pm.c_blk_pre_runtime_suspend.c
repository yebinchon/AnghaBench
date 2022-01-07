
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {scalar_t__ rpm_status; int queue_lock; int dev; int q_usage_counter; } ;


 int EBUSY ;
 scalar_t__ RPM_ACTIVE ;
 scalar_t__ RPM_SUSPENDING ;
 int WARN_ON_ONCE (int) ;
 int blk_clear_pm_only (struct request_queue*) ;
 int blk_freeze_queue_start (struct request_queue*) ;
 int blk_mq_unfreeze_queue (struct request_queue*) ;
 int blk_set_pm_only (struct request_queue*) ;
 scalar_t__ percpu_ref_is_zero (int *) ;
 int percpu_ref_switch_to_atomic_sync (int *) ;
 int pm_runtime_mark_last_busy (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int blk_pre_runtime_suspend(struct request_queue *q)
{
 int ret = 0;

 if (!q->dev)
  return ret;

 WARN_ON_ONCE(q->rpm_status != RPM_ACTIVE);







 blk_set_pm_only(q);
 ret = -EBUSY;

 blk_freeze_queue_start(q);






 percpu_ref_switch_to_atomic_sync(&q->q_usage_counter);
 if (percpu_ref_is_zero(&q->q_usage_counter))
  ret = 0;

 blk_mq_unfreeze_queue(q);

 spin_lock_irq(&q->queue_lock);
 if (ret < 0)
  pm_runtime_mark_last_busy(q->dev);
 else
  q->rpm_status = RPM_SUSPENDING;
 spin_unlock_irq(&q->queue_lock);

 if (ret)
  blk_clear_pm_only(q);

 return ret;
}
