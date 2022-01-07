
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {scalar_t__ rq_disk; scalar_t__ write_hint; scalar_t__ ioprio; int rq_flags; int cmd_flags; scalar_t__ start_time_ns; int * bio; int __data_len; TYPE_1__* biotail; } ;
struct TYPE_2__ {int * bi_next; } ;




 int REQ_FAILFAST_MASK ;
 scalar_t__ REQ_OP_WRITE_SAME ;
 int RQF_MIXED_MERGE ;
 int blk_account_io_merge (struct request*) ;
 int blk_discard_mergable (struct request*) ;
 scalar_t__ blk_rq_bytes (struct request*) ;
 int blk_rq_set_mixed_merge (struct request*) ;
 int blk_try_req_merge (struct request*,struct request*) ;
 int blk_write_same_mergeable (int *,int *) ;
 int elv_merge_requests (struct request_queue*,struct request*,struct request*) ;
 int ll_merge_requests_fn (struct request_queue*,struct request*,struct request*) ;
 int req_attempt_discard_merge (struct request_queue*,struct request*,struct request*) ;
 scalar_t__ req_op (struct request*) ;
 scalar_t__ rq_data_dir (struct request*) ;
 int rq_mergeable (struct request*) ;

__attribute__((used)) static struct request *attempt_merge(struct request_queue *q,
         struct request *req, struct request *next)
{
 if (!rq_mergeable(req) || !rq_mergeable(next))
  return ((void*)0);

 if (req_op(req) != req_op(next))
  return ((void*)0);

 if (rq_data_dir(req) != rq_data_dir(next)
     || req->rq_disk != next->rq_disk)
  return ((void*)0);

 if (req_op(req) == REQ_OP_WRITE_SAME &&
     !blk_write_same_mergeable(req->bio, next->bio))
  return ((void*)0);





 if (req->write_hint != next->write_hint)
  return ((void*)0);

 if (req->ioprio != next->ioprio)
  return ((void*)0);
 switch (blk_try_req_merge(req, next)) {
 case 128:
  if (!req_attempt_discard_merge(q, req, next))
   return ((void*)0);
  break;
 case 129:
  if (!ll_merge_requests_fn(q, req, next))
   return ((void*)0);
  break;
 default:
  return ((void*)0);
 }







 if (((req->rq_flags | next->rq_flags) & RQF_MIXED_MERGE) ||
     (req->cmd_flags & REQ_FAILFAST_MASK) !=
     (next->cmd_flags & REQ_FAILFAST_MASK)) {
  blk_rq_set_mixed_merge(req);
  blk_rq_set_mixed_merge(next);
 }






 if (next->start_time_ns < req->start_time_ns)
  req->start_time_ns = next->start_time_ns;

 req->biotail->bi_next = next->bio;
 req->biotail = next->biotail;

 req->__data_len += blk_rq_bytes(next);

 if (!blk_discard_mergable(req))
  elv_merge_requests(q, req, next);




 blk_account_io_merge(next);





 next->bio = ((void*)0);
 return next;
}
