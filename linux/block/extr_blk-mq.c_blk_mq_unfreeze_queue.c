
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {scalar_t__ mq_freeze_depth; int mq_freeze_lock; int mq_freeze_wq; int q_usage_counter; } ;


 int WARN_ON_ONCE (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int percpu_ref_resurrect (int *) ;
 int wake_up_all (int *) ;

void blk_mq_unfreeze_queue(struct request_queue *q)
{
 mutex_lock(&q->mq_freeze_lock);
 q->mq_freeze_depth--;
 WARN_ON_ONCE(q->mq_freeze_depth < 0);
 if (!q->mq_freeze_depth) {
  percpu_ref_resurrect(&q->q_usage_counter);
  wake_up_all(&q->mq_freeze_wq);
 }
 mutex_unlock(&q->mq_freeze_lock);
}
