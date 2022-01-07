
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int internal_tag; int tag; struct blk_mq_hw_ctx* mq_hctx; struct blk_mq_ctx* mq_ctx; struct request_queue* q; } ;
struct blk_mq_hw_ctx {int sched_tags; int tags; } ;
struct blk_mq_ctx {int dummy; } ;


 int blk_mq_put_tag (struct blk_mq_hw_ctx*,int ,struct blk_mq_ctx*,int const) ;
 int blk_mq_sched_restart (struct blk_mq_hw_ctx*) ;
 int blk_pm_mark_last_busy (struct request*) ;
 int blk_queue_exit (struct request_queue*) ;

__attribute__((used)) static void __blk_mq_free_request(struct request *rq)
{
 struct request_queue *q = rq->q;
 struct blk_mq_ctx *ctx = rq->mq_ctx;
 struct blk_mq_hw_ctx *hctx = rq->mq_hctx;
 const int sched_tag = rq->internal_tag;

 blk_pm_mark_last_busy(rq);
 rq->mq_hctx = ((void*)0);
 if (rq->tag != -1)
  blk_mq_put_tag(hctx, hctx->tags, ctx, rq->tag);
 if (sched_tag != -1)
  blk_mq_put_tag(hctx, hctx->sched_tags, ctx, sched_tag);
 blk_mq_sched_restart(hctx);
 blk_queue_exit(q);
}
