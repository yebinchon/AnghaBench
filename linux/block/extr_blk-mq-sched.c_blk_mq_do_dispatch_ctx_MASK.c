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
struct request_queue {int dummy; } ;
struct request {int /*<<< orphan*/  mq_ctx; int /*<<< orphan*/  queuelist; } ;
struct blk_mq_hw_ctx {int /*<<< orphan*/  dispatch_from; int /*<<< orphan*/  ctx_map; struct request_queue* queue; } ;
struct blk_mq_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct blk_mq_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct blk_mq_ctx*) ; 
 struct request* FUNC3 (struct blk_mq_hw_ctx*,struct blk_mq_ctx*) ; 
 scalar_t__ FUNC4 (struct request_queue*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct blk_mq_hw_ctx*) ; 
 struct blk_mq_ctx* FUNC6 (struct blk_mq_hw_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct blk_mq_hw_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rq_list ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct blk_mq_hw_ctx *hctx)
{
	struct request_queue *q = hctx->queue;
	FUNC0(rq_list);
	struct blk_mq_ctx *ctx = FUNC1(hctx->dispatch_from);

	do {
		struct request *rq;

		if (!FUNC9(&hctx->ctx_map))
			break;

		if (!FUNC5(hctx))
			break;

		rq = FUNC3(hctx, ctx);
		if (!rq) {
			FUNC7(hctx);
			break;
		}

		/*
		 * Now this rq owns the budget which has to be released
		 * if this rq won't be queued to driver via .queue_rq()
		 * in blk_mq_dispatch_rq_list().
		 */
		FUNC8(&rq->queuelist, &rq_list);

		/* round robin for fair dispatch */
		ctx = FUNC6(hctx, rq->mq_ctx);

	} while (FUNC4(q, &rq_list, true));

	FUNC2(hctx->dispatch_from, ctx);
}