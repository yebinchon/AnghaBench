#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct request_queue {struct elevator_queue* elevator; } ;
struct elevator_queue {TYPE_2__* type; } ;
struct blk_mq_hw_ctx {int type; int flags; } ;
struct blk_mq_ctx {int /*<<< orphan*/  lock; int /*<<< orphan*/ * rq_lists; } ;
struct bio {int /*<<< orphan*/  bi_opf; } ;
typedef  enum hctx_type { ____Placeholder_hctx_type } hctx_type ;
struct TYPE_3__ {int (* bio_merge ) (struct blk_mq_hw_ctx*,struct bio*,unsigned int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int BLK_MQ_F_SHOULD_MERGE ; 
 int FUNC0 (struct request_queue*,struct blk_mq_hw_ctx*,struct blk_mq_ctx*,struct bio*,unsigned int) ; 
 struct blk_mq_ctx* FUNC1 (struct request_queue*) ; 
 struct blk_mq_hw_ctx* FUNC2 (struct request_queue*,int /*<<< orphan*/ ,struct blk_mq_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct blk_mq_hw_ctx*,struct bio*,unsigned int) ; 

bool FUNC7(struct request_queue *q, struct bio *bio,
		unsigned int nr_segs)
{
	struct elevator_queue *e = q->elevator;
	struct blk_mq_ctx *ctx = FUNC1(q);
	struct blk_mq_hw_ctx *hctx = FUNC2(q, bio->bi_opf, ctx);
	bool ret = false;
	enum hctx_type type;

	if (e && e->type->ops.bio_merge)
		return e->type->ops.bio_merge(hctx, bio, nr_segs);

	type = hctx->type;
	if ((hctx->flags & BLK_MQ_F_SHOULD_MERGE) &&
			!FUNC3(&ctx->rq_lists[type])) {
		/* default per sw-queue merge */
		FUNC4(&ctx->lock);
		ret = FUNC0(q, hctx, ctx, bio, nr_segs);
		FUNC5(&ctx->lock);
	}

	return ret;
}