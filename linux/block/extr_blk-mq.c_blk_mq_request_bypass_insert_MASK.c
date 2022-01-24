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
struct request {int /*<<< orphan*/  queuelist; struct blk_mq_hw_ctx* mq_hctx; } ;
struct blk_mq_hw_ctx {int /*<<< orphan*/  lock; int /*<<< orphan*/  dispatch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct blk_mq_hw_ctx*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct request *rq, bool run_queue)
{
	struct blk_mq_hw_ctx *hctx = rq->mq_hctx;

	FUNC2(&hctx->lock);
	FUNC1(&rq->queuelist, &hctx->dispatch);
	FUNC3(&hctx->lock);

	if (run_queue)
		FUNC0(hctx, false);
}