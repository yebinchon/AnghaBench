
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {struct blk_mq_ctx* mq_ctx; } ;
struct blk_mq_hw_ctx {int dummy; } ;
struct blk_mq_ctx {int lock; } ;


 int __blk_mq_insert_req_list (struct blk_mq_hw_ctx*,struct request*,int) ;
 int blk_mq_hctx_mark_pending (struct blk_mq_hw_ctx*,struct blk_mq_ctx*) ;
 int lockdep_assert_held (int *) ;

void __blk_mq_insert_request(struct blk_mq_hw_ctx *hctx, struct request *rq,
        bool at_head)
{
 struct blk_mq_ctx *ctx = rq->mq_ctx;

 lockdep_assert_held(&ctx->lock);

 __blk_mq_insert_req_list(hctx, rq, at_head);
 blk_mq_hctx_mark_pending(hctx, ctx);
}
