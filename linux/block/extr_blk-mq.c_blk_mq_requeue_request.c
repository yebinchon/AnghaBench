
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int queuelist; } ;


 int BUG_ON (int) ;
 int __blk_mq_requeue_request (struct request*) ;
 int blk_mq_add_to_requeue_list (struct request*,int,int) ;
 int blk_mq_sched_requeue_request (struct request*) ;
 int list_empty (int *) ;

void blk_mq_requeue_request(struct request *rq, bool kick_requeue_list)
{
 __blk_mq_requeue_request(rq);


 blk_mq_sched_requeue_request(rq);

 BUG_ON(!list_empty(&rq->queuelist));
 blk_mq_add_to_requeue_list(rq, 1, kick_requeue_list);
}
