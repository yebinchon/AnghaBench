
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {struct elevator_queue* elevator; } ;
struct elevator_queue {TYPE_2__* type; } ;
struct blk_mq_hw_ctx {int type; int flags; } ;
struct blk_mq_ctx {int lock; int * rq_lists; } ;
struct bio {int bi_opf; } ;
typedef enum hctx_type { ____Placeholder_hctx_type } hctx_type ;
struct TYPE_3__ {int (* bio_merge ) (struct blk_mq_hw_ctx*,struct bio*,unsigned int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int BLK_MQ_F_SHOULD_MERGE ;
 int blk_mq_attempt_merge (struct request_queue*,struct blk_mq_hw_ctx*,struct blk_mq_ctx*,struct bio*,unsigned int) ;
 struct blk_mq_ctx* blk_mq_get_ctx (struct request_queue*) ;
 struct blk_mq_hw_ctx* blk_mq_map_queue (struct request_queue*,int ,struct blk_mq_ctx*) ;
 int list_empty_careful (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct blk_mq_hw_ctx*,struct bio*,unsigned int) ;

bool __blk_mq_sched_bio_merge(struct request_queue *q, struct bio *bio,
  unsigned int nr_segs)
{
 struct elevator_queue *e = q->elevator;
 struct blk_mq_ctx *ctx = blk_mq_get_ctx(q);
 struct blk_mq_hw_ctx *hctx = blk_mq_map_queue(q, bio->bi_opf, ctx);
 bool ret = 0;
 enum hctx_type type;

 if (e && e->type->ops.bio_merge)
  return e->type->ops.bio_merge(hctx, bio, nr_segs);

 type = hctx->type;
 if ((hctx->flags & BLK_MQ_F_SHOULD_MERGE) &&
   !list_empty_careful(&ctx->rq_lists[type])) {

  spin_lock(&ctx->lock);
  ret = blk_mq_attempt_merge(q, hctx, ctx, bio, nr_segs);
  spin_unlock(&ctx->lock);
 }

 return ret;
}
