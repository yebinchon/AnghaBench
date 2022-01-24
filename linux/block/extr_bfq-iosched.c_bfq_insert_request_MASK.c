#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct request_queue {struct request* last_merge; TYPE_1__* elevator; } ;
struct request {unsigned int cmd_flags; int /*<<< orphan*/  queuelist; } ;
struct blk_mq_hw_ctx {struct request_queue* queue; } ;
struct bfq_queue {int dummy; } ;
struct bfq_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  dispatch; } ;
struct TYPE_2__ {struct bfq_data* elevator_data; } ;

/* Variables and functions */
 struct bfq_queue* FUNC0 (struct request*) ; 
 int FUNC1 (struct bfq_data*,struct request*) ; 
 struct bfq_queue* FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,struct bfq_queue*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 scalar_t__ FUNC5 (struct request_queue*,struct request*) ; 
 scalar_t__ FUNC6 (struct request*) ; 
 int /*<<< orphan*/  FUNC7 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct request*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct blk_mq_hw_ctx *hctx, struct request *rq,
			       bool at_head)
{
	struct request_queue *q = hctx->queue;
	struct bfq_data *bfqd = q->elevator->elevator_data;
	struct bfq_queue *bfqq;
	bool idle_timer_disabled = false;
	unsigned int cmd_flags;

	FUNC11(&bfqd->lock);
	if (FUNC5(q, rq)) {
		FUNC12(&bfqd->lock);
		return;
	}

	FUNC12(&bfqd->lock);

	FUNC4(rq);

	FUNC11(&bfqd->lock);
	bfqq = FUNC2(rq);
	if (!bfqq || at_head || FUNC6(rq)) {
		if (at_head)
			FUNC8(&rq->queuelist, &bfqd->dispatch);
		else
			FUNC9(&rq->queuelist, &bfqd->dispatch);
	} else {
		idle_timer_disabled = FUNC1(bfqd, rq);
		/*
		 * Update bfqq, because, if a queue merge has occurred
		 * in __bfq_insert_request, then rq has been
		 * redirected into a new queue.
		 */
		bfqq = FUNC0(rq);

		if (FUNC10(rq)) {
			FUNC7(q, rq);
			if (!q->last_merge)
				q->last_merge = rq;
		}
	}

	/*
	 * Cache cmd_flags before releasing scheduler lock, because rq
	 * may disappear afterwards (for example, because of a request
	 * merge).
	 */
	cmd_flags = rq->cmd_flags;

	FUNC12(&bfqd->lock);

	FUNC3(q, bfqq, idle_timer_disabled,
				cmd_flags);
}