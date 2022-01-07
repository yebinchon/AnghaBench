
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int ref; int (* end_io ) (struct request*,int ) ;} ;
struct blk_mq_hw_ctx {int dummy; } ;


 int __blk_mq_free_request (struct request*) ;
 scalar_t__ blk_mq_req_expired (struct request*,unsigned long*) ;
 int blk_mq_rq_timed_out (struct request*,int) ;
 scalar_t__ is_flush_rq (struct request*,struct blk_mq_hw_ctx*) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int refcount_inc_not_zero (int *) ;
 int stub1 (struct request*,int ) ;

__attribute__((used)) static bool blk_mq_check_expired(struct blk_mq_hw_ctx *hctx,
  struct request *rq, void *priv, bool reserved)
{
 unsigned long *next = priv;





 if (!blk_mq_req_expired(rq, next))
  return 1;
 if (!refcount_inc_not_zero(&rq->ref))
  return 1;







 if (blk_mq_req_expired(rq, next))
  blk_mq_rq_timed_out(rq, reserved);

 if (is_flush_rq(rq, hctx))
  rq->end_io(rq, 0);
 else if (refcount_dec_and_test(&rq->ref))
  __blk_mq_free_request(rq);

 return 1;
}
