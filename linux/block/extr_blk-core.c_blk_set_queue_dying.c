
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int mq_freeze_wq; } ;


 int QUEUE_FLAG_DYING ;
 int blk_freeze_queue_start (struct request_queue*) ;
 int blk_mq_wake_waiters (struct request_queue*) ;
 int blk_queue_flag_set (int ,struct request_queue*) ;
 scalar_t__ queue_is_mq (struct request_queue*) ;
 int wake_up_all (int *) ;

void blk_set_queue_dying(struct request_queue *q)
{
 blk_queue_flag_set(QUEUE_FLAG_DYING, q);






 blk_freeze_queue_start(q);

 if (queue_is_mq(q))
  blk_mq_wake_waiters(q);


 wake_up_all(&q->mq_freeze_wq);
}
