
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct blk_mq_hw_ctx {int type; } ;
struct blk_mq_ctx {int rq_merged; int * rq_lists; int lock; } ;
struct bio {int dummy; } ;
typedef enum hctx_type { ____Placeholder_hctx_type } hctx_type ;


 scalar_t__ blk_mq_bio_list_merge (struct request_queue*,int *,struct bio*,unsigned int) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static bool blk_mq_attempt_merge(struct request_queue *q,
     struct blk_mq_hw_ctx *hctx,
     struct blk_mq_ctx *ctx, struct bio *bio,
     unsigned int nr_segs)
{
 enum hctx_type type = hctx->type;

 lockdep_assert_held(&ctx->lock);

 if (blk_mq_bio_list_merge(q, &ctx->rq_lists[type], bio, nr_segs)) {
  ctx->rq_merged++;
  return 1;
 }

 return 0;
}
