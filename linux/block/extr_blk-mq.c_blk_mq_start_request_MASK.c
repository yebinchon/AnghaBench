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
struct TYPE_4__ {TYPE_1__* profile; } ;
struct request_queue {TYPE_2__ integrity; scalar_t__ dma_drain_size; int /*<<< orphan*/  queue_flags; } ;
struct request {int /*<<< orphan*/  nr_phys_segments; int /*<<< orphan*/  state; int /*<<< orphan*/  rq_flags; int /*<<< orphan*/  stats_sectors; int /*<<< orphan*/  io_start_time_ns; struct request_queue* q; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* prepare_fn ) (struct request*) ;} ;

/* Variables and functions */
 scalar_t__ MQ_RQ_IDLE ; 
 int /*<<< orphan*/  MQ_RQ_IN_FLIGHT ; 
 int /*<<< orphan*/  QUEUE_FLAG_STATS ; 
 scalar_t__ REQ_OP_WRITE ; 
 int /*<<< orphan*/  RQF_STATS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 scalar_t__ FUNC3 (struct request*) ; 
 scalar_t__ FUNC4 (struct request*) ; 
 scalar_t__ FUNC5 (struct request*) ; 
 int /*<<< orphan*/  FUNC6 (struct request*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (struct request*) ; 
 int /*<<< orphan*/  FUNC9 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC10 (struct request*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct request_queue*,struct request*) ; 

void FUNC13(struct request *rq)
{
	struct request_queue *q = rq->q;

	FUNC12(q, rq);

	if (FUNC11(QUEUE_FLAG_STATS, &q->queue_flags)) {
		rq->io_start_time_ns = FUNC7();
		rq->stats_sectors = FUNC6(rq);
		rq->rq_flags |= RQF_STATS;
		FUNC9(q, rq);
	}

	FUNC0(FUNC4(rq) != MQ_RQ_IDLE);

	FUNC2(rq);
	FUNC1(rq->state, MQ_RQ_IN_FLIGHT);

	if (q->dma_drain_size && FUNC5(rq)) {
		/*
		 * Make sure space for the drain appears.  We know we can do
		 * this because max_hw_segments has been adjusted to be one
		 * fewer than the device can handle.
		 */
		rq->nr_phys_segments++;
	}

#ifdef CONFIG_BLK_DEV_INTEGRITY
	if (blk_integrity_rq(rq) && req_op(rq) == REQ_OP_WRITE)
		q->integrity.profile->prepare_fn(rq);
#endif
}