
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int mq_freeze_depth; int mq_freeze_wq; int q_usage_counter; } ;
typedef int blk_mq_req_flags_t ;


 int BLK_MQ_REQ_NOWAIT ;
 int BLK_MQ_REQ_PREEMPT ;
 int EBUSY ;
 int ENODEV ;
 scalar_t__ blk_pm_request_resume (struct request_queue*) ;
 scalar_t__ blk_queue_dying (struct request_queue*) ;
 int blk_queue_pm_only (struct request_queue*) ;
 int percpu_ref_put (int *) ;
 scalar_t__ percpu_ref_tryget_live (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int smp_rmb () ;
 int wait_event (int ,int) ;

int blk_queue_enter(struct request_queue *q, blk_mq_req_flags_t flags)
{
 const bool pm = flags & BLK_MQ_REQ_PREEMPT;

 while (1) {
  bool success = 0;

  rcu_read_lock();
  if (percpu_ref_tryget_live(&q->q_usage_counter)) {





   if (pm || !blk_queue_pm_only(q)) {
    success = 1;
   } else {
    percpu_ref_put(&q->q_usage_counter);
   }
  }
  rcu_read_unlock();

  if (success)
   return 0;

  if (flags & BLK_MQ_REQ_NOWAIT)
   return -EBUSY;
  smp_rmb();

  wait_event(q->mq_freeze_wq,
      (!q->mq_freeze_depth &&
       (pm || (blk_pm_request_resume(q),
        !blk_queue_pm_only(q)))) ||
      blk_queue_dying(q));
  if (blk_queue_dying(q))
   return -ENODEV;
 }
}
