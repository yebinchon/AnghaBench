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
struct request_queue {scalar_t__ dma_drain_size; } ;
struct request {int /*<<< orphan*/  nr_phys_segments; int /*<<< orphan*/  rq_flags; int /*<<< orphan*/  state; struct request_queue* q; } ;

/* Variables and functions */
 int /*<<< orphan*/  MQ_RQ_IDLE ; 
 int /*<<< orphan*/  RQF_TIMED_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (struct request*) ; 
 scalar_t__ FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*,struct request*) ; 

__attribute__((used)) static void FUNC6(struct request *rq)
{
	struct request_queue *q = rq->q;

	FUNC1(rq);

	FUNC5(q, rq);
	FUNC4(q, rq);

	if (FUNC2(rq)) {
		FUNC0(rq->state, MQ_RQ_IDLE);
		rq->rq_flags &= ~RQF_TIMED_OUT;
		if (q->dma_drain_size && FUNC3(rq))
			rq->nr_phys_segments--;
	}
}