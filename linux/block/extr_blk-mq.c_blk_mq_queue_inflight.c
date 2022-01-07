
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;


 int blk_mq_queue_tag_busy_iter (struct request_queue*,int ,int*) ;
 int blk_mq_rq_inflight ;

bool blk_mq_queue_inflight(struct request_queue *q)
{
 bool busy = 0;

 blk_mq_queue_tag_busy_iter(q, blk_mq_rq_inflight, &busy);
 return busy;
}
