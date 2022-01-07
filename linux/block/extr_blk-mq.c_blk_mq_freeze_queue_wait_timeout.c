
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int q_usage_counter; int mq_freeze_wq; } ;


 int percpu_ref_is_zero (int *) ;
 int wait_event_timeout (int ,int ,unsigned long) ;

int blk_mq_freeze_queue_wait_timeout(struct request_queue *q,
         unsigned long timeout)
{
 return wait_event_timeout(q->mq_freeze_wq,
     percpu_ref_is_zero(&q->q_usage_counter),
     timeout);
}
