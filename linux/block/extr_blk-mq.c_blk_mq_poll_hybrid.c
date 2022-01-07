
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {scalar_t__ poll_nsec; } ;
struct request {int dummy; } ;
struct blk_mq_hw_ctx {int sched_tags; int tags; } ;
typedef int blk_qc_t ;


 scalar_t__ BLK_MQ_POLL_CLASSIC ;
 int blk_mq_poll_hybrid_sleep (struct request_queue*,struct blk_mq_hw_ctx*,struct request*) ;
 struct request* blk_mq_tag_to_rq (int ,int ) ;
 int blk_qc_t_is_internal (int ) ;
 int blk_qc_t_to_tag (int ) ;

__attribute__((used)) static bool blk_mq_poll_hybrid(struct request_queue *q,
          struct blk_mq_hw_ctx *hctx, blk_qc_t cookie)
{
 struct request *rq;

 if (q->poll_nsec == BLK_MQ_POLL_CLASSIC)
  return 0;

 if (!blk_qc_t_is_internal(cookie))
  rq = blk_mq_tag_to_rq(hctx->tags, blk_qc_t_to_tag(cookie));
 else {
  rq = blk_mq_tag_to_rq(hctx->sched_tags, blk_qc_t_to_tag(cookie));






  if (!rq)
   return 0;
 }

 return blk_mq_poll_hybrid_sleep(q, hctx, rq);
}
