
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int mq_freeze_depth; int mq_freeze_lock; int q_usage_counter; } ;


 int blk_mq_run_hw_queues (struct request_queue*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int percpu_ref_kill (int *) ;
 scalar_t__ queue_is_mq (struct request_queue*) ;

void blk_freeze_queue_start(struct request_queue *q)
{
 mutex_lock(&q->mq_freeze_lock);
 if (++q->mq_freeze_depth == 1) {
  percpu_ref_kill(&q->q_usage_counter);
  mutex_unlock(&q->mq_freeze_lock);
  if (queue_is_mq(q))
   blk_mq_run_hw_queues(q, 0);
 } else {
  mutex_unlock(&q->mq_freeze_lock);
 }
}
