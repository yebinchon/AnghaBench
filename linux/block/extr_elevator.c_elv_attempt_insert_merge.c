
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct request* last_merge; } ;
struct request {int dummy; } ;


 scalar_t__ blk_attempt_req_merge (struct request_queue*,struct request*,struct request*) ;
 scalar_t__ blk_queue_nomerges (struct request_queue*) ;
 scalar_t__ blk_queue_noxmerges (struct request_queue*) ;
 int blk_rq_pos (struct request*) ;
 struct request* elv_rqhash_find (struct request_queue*,int ) ;

bool elv_attempt_insert_merge(struct request_queue *q, struct request *rq)
{
 struct request *__rq;
 bool ret;

 if (blk_queue_nomerges(q))
  return 0;




 if (q->last_merge && blk_attempt_req_merge(q, q->last_merge, rq))
  return 1;

 if (blk_queue_noxmerges(q))
  return 0;

 ret = 0;



 while (1) {
  __rq = elv_rqhash_find(q, blk_rq_pos(rq));
  if (!__rq || !blk_attempt_req_merge(q, __rq, rq))
   break;


  ret = 1;
  rq = __rq;
 }

 return ret;
}
