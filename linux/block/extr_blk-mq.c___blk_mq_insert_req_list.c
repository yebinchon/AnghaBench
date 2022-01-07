
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int queuelist; struct blk_mq_ctx* mq_ctx; } ;
struct blk_mq_hw_ctx {int type; int queue; } ;
struct blk_mq_ctx {int * rq_lists; int lock; } ;
typedef enum hctx_type { ____Placeholder_hctx_type } hctx_type ;


 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int lockdep_assert_held (int *) ;
 int trace_block_rq_insert (int ,struct request*) ;

__attribute__((used)) static inline void __blk_mq_insert_req_list(struct blk_mq_hw_ctx *hctx,
         struct request *rq,
         bool at_head)
{
 struct blk_mq_ctx *ctx = rq->mq_ctx;
 enum hctx_type type = hctx->type;

 lockdep_assert_held(&ctx->lock);

 trace_block_rq_insert(hctx->queue, rq);

 if (at_head)
  list_add(&rq->queuelist, &ctx->rq_lists[type]);
 else
  list_add_tail(&rq->queuelist, &ctx->rq_lists[type]);
}
