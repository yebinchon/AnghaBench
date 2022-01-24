#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct request {int /*<<< orphan*/  queuelist; struct blk_mq_ctx* mq_ctx; } ;
struct blk_mq_hw_ctx {int type; int /*<<< orphan*/  queue; } ;
struct blk_mq_ctx {int /*<<< orphan*/ * rq_lists; int /*<<< orphan*/  lock; } ;
typedef  enum hctx_type { ____Placeholder_hctx_type } hctx_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct request*) ; 

__attribute__((used)) static inline void FUNC4(struct blk_mq_hw_ctx *hctx,
					    struct request *rq,
					    bool at_head)
{
	struct blk_mq_ctx *ctx = rq->mq_ctx;
	enum hctx_type type = hctx->type;

	FUNC2(&ctx->lock);

	FUNC3(hctx->queue, rq);

	if (at_head)
		FUNC0(&rq->queuelist, &ctx->rq_lists[type]);
	else
		FUNC1(&rq->queuelist, &ctx->rq_lists[type]);
}