
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int dummy; } ;


 scalar_t__ elv_attempt_insert_merge (struct request_queue*,struct request*) ;
 scalar_t__ rq_mergeable (struct request*) ;

bool blk_mq_sched_try_insert_merge(struct request_queue *q, struct request *rq)
{
 return rq_mergeable(rq) && elv_attempt_insert_merge(q, rq);
}
