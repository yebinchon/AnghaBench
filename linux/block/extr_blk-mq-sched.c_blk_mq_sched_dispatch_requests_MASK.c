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
struct blk_mq_hw_ctx {scalar_t__ dispatch_busy; int /*<<< orphan*/  lock; int /*<<< orphan*/  dispatch; int /*<<< orphan*/  run; struct request_queue* queue; } ;
struct TYPE_3__ {scalar_t__ dispatch_request; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct request_queue*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct blk_mq_hw_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct blk_mq_hw_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct blk_mq_hw_ctx*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct blk_mq_hw_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct blk_mq_hw_ctx*) ; 
 scalar_t__ FUNC7 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rq_list ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int) ; 

void FUNC14(struct blk_mq_hw_ctx *hctx)
{
	struct request_queue *q = hctx->queue;
	struct elevator_queue *e = q->elevator;
	const bool has_sched_dispatch = e && e->type->ops.dispatch_request;
	FUNC0(rq_list);

	/* RCU or SRCU read lock is needed before checking quiesced flag */
	if (FUNC13(FUNC5(hctx) || FUNC7(q)))
		return;

	hctx->run++;

	/*
	 * If we have previous entries on our dispatch list, grab them first for
	 * more fair dispatch.
	 */
	if (!FUNC9(&hctx->dispatch)) {
		FUNC11(&hctx->lock);
		if (!FUNC8(&hctx->dispatch))
			FUNC10(&hctx->dispatch, &rq_list);
		FUNC12(&hctx->lock);
	}

	/*
	 * Only ask the scheduler for requests, if we didn't have residual
	 * requests from the dispatch list. This is to avoid the case where
	 * we only ever dispatch a fraction of the requests available because
	 * of low device queue depth. Once we pull requests out of the IO
	 * scheduler, we can no longer merge or sort them. So it's best to
	 * leave them there for as long as we can. Mark the hw queue as
	 * needing a restart in that case.
	 *
	 * We want to dispatch from the scheduler if there was nothing
	 * on the dispatch list or we were able to dispatch from the
	 * dispatch list.
	 */
	if (!FUNC8(&rq_list)) {
		FUNC6(hctx);
		if (FUNC1(q, &rq_list, false)) {
			if (has_sched_dispatch)
				FUNC3(hctx);
			else
				FUNC2(hctx);
		}
	} else if (has_sched_dispatch) {
		FUNC3(hctx);
	} else if (hctx->dispatch_busy) {
		/* dequeue request one by one from sw queue if queue is busy */
		FUNC2(hctx);
	} else {
		FUNC4(hctx, &rq_list);
		FUNC1(q, &rq_list, false);
	}
}