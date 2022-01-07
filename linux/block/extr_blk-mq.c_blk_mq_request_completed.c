
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;


 scalar_t__ MQ_RQ_COMPLETE ;
 scalar_t__ blk_mq_rq_state (struct request*) ;

int blk_mq_request_completed(struct request *rq)
{
 return blk_mq_rq_state(rq) == MQ_RQ_COMPLETE;
}
