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
struct sbitmap {int dummy; } ;
struct dispatch_rq_data {TYPE_1__* rq; struct blk_mq_hw_ctx* hctx; } ;
struct blk_mq_hw_ctx {int type; struct blk_mq_ctx** ctxs; } ;
struct blk_mq_ctx {int /*<<< orphan*/  lock; TYPE_2__* rq_lists; } ;
typedef  enum hctx_type { ____Placeholder_hctx_type } hctx_type ;
struct TYPE_4__ {int /*<<< orphan*/  next; } ;
struct TYPE_3__ {int /*<<< orphan*/  queuelist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sbitmap*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC6(struct sbitmap *sb, unsigned int bitnr,
		void *data)
{
	struct dispatch_rq_data *dispatch_data = data;
	struct blk_mq_hw_ctx *hctx = dispatch_data->hctx;
	struct blk_mq_ctx *ctx = hctx->ctxs[bitnr];
	enum hctx_type type = hctx->type;

	FUNC4(&ctx->lock);
	if (!FUNC1(&ctx->rq_lists[type])) {
		dispatch_data->rq = FUNC2(ctx->rq_lists[type].next);
		FUNC0(&dispatch_data->rq->queuelist);
		if (FUNC1(&ctx->rq_lists[type]))
			FUNC3(sb, bitnr);
	}
	FUNC5(&ctx->lock);

	return !dispatch_data->rq;
}