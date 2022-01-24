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
struct request {int /*<<< orphan*/  queuelist; scalar_t__ fifo_time; } ;
struct deadline_data {int /*<<< orphan*/ * fifo_list; scalar_t__* fifo_expire; int /*<<< orphan*/  dispatch; } ;
struct blk_mq_hw_ctx {struct request_queue* queue; } ;
struct TYPE_2__ {struct deadline_data* elevator_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 scalar_t__ FUNC1 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 scalar_t__ FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct deadline_data*,struct request*) ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*,struct request*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct request*) ; 
 scalar_t__ FUNC9 (struct request*) ; 

__attribute__((used)) static void FUNC10(struct blk_mq_hw_ctx *hctx, struct request *rq,
			      bool at_head)
{
	struct request_queue *q = hctx->queue;
	struct deadline_data *dd = q->elevator->elevator_data;
	const int data_dir = FUNC8(rq);

	/*
	 * This may be a requeue of a write request that has locked its
	 * target zone. If it is the case, this releases the zone lock.
	 */
	FUNC2(rq);

	if (FUNC1(q, rq))
		return;

	FUNC0(rq);

	if (at_head || FUNC3(rq)) {
		if (at_head)
			FUNC6(&rq->queuelist, &dd->dispatch);
		else
			FUNC7(&rq->queuelist, &dd->dispatch);
	} else {
		FUNC4(dd, rq);

		if (FUNC9(rq)) {
			FUNC5(q, rq);
			if (!q->last_merge)
				q->last_merge = rq;
		}

		/*
		 * set expire time and add to fifo list
		 */
		rq->fifo_time = jiffies + dd->fifo_expire[data_dir];
		FUNC7(&rq->queuelist, &dd->fifo_list[data_dir]);
	}
}