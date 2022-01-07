
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int q; } ;


 int trace_block_rq_insert (int ,struct request*) ;

void blk_mq_sched_request_inserted(struct request *rq)
{
 trace_block_rq_insert(rq->q, rq);
}
