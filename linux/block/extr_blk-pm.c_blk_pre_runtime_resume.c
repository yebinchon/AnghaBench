
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_lock; int rpm_status; int dev; } ;


 int RPM_RESUMING ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void blk_pre_runtime_resume(struct request_queue *q)
{
 if (!q->dev)
  return;

 spin_lock_irq(&q->queue_lock);
 q->rpm_status = RPM_RESUMING;
 spin_unlock_irq(&q->queue_lock);
}
