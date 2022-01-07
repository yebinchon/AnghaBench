
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int tag; int rq_flags; int mq_ctx; } ;
struct blk_mq_hw_ctx {int nr_active; int tags; } ;


 int RQF_MQ_INFLIGHT ;
 int atomic_dec (int *) ;
 int blk_mq_put_tag (struct blk_mq_hw_ctx*,int ,int ,int) ;

__attribute__((used)) static inline void __blk_mq_put_driver_tag(struct blk_mq_hw_ctx *hctx,
        struct request *rq)
{
 blk_mq_put_tag(hctx, hctx->tags, rq->mq_ctx, rq->tag);
 rq->tag = -1;

 if (rq->rq_flags & RQF_MQ_INFLIGHT) {
  rq->rq_flags &= ~RQF_MQ_INFLIGHT;
  atomic_dec(&hctx->nr_active);
 }
}
