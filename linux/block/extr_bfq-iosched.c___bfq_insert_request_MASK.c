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
struct TYPE_2__ {struct bfq_queue** priv; } ;
struct request {int /*<<< orphan*/  queuelist; scalar_t__ fifo_time; TYPE_1__ elv; } ;
struct bfq_queue {int /*<<< orphan*/  fifo; int /*<<< orphan*/  ref; int /*<<< orphan*/  allocated; } ;
struct bfq_data {scalar_t__* bfq_fifo_expire; } ;

/* Variables and functions */
 struct bfq_queue* FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 scalar_t__ FUNC3 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfq_data*,int /*<<< orphan*/ ,struct bfq_queue*,struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct bfq_data*,struct bfq_queue*,struct request*) ; 
 struct bfq_queue* FUNC8 (struct bfq_data*,struct bfq_queue*,struct request*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bfq_data*,struct bfq_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bfq_data*,struct bfq_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC11 (struct bfq_data*,struct bfq_queue*) ; 
 struct bfq_queue* FUNC12 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC15 (struct request*) ; 

__attribute__((used)) static bool FUNC16(struct bfq_data *bfqd, struct request *rq)
{
	struct bfq_queue *bfqq = FUNC0(rq),
		*new_bfqq = FUNC8(bfqd, bfqq, rq, true);
	bool waiting, idle_timer_disabled = false;

	if (new_bfqq) {
		/*
		 * Release the request's reference to the old bfqq
		 * and make sure one is taken to the shared queue.
		 */
		new_bfqq->allocated++;
		bfqq->allocated--;
		new_bfqq->ref++;
		/*
		 * If the bic associated with the process
		 * issuing this request still points to bfqq
		 * (and thus has not been already redirected
		 * to new_bfqq or even some other bfq_queue),
		 * then complete the merge and redirect it to
		 * new_bfqq.
		 */
		if (FUNC12(FUNC1(rq), 1) == bfqq)
			FUNC5(bfqd, FUNC1(rq),
					bfqq, new_bfqq);

		FUNC4(bfqq);
		/*
		 * rq is about to be enqueued into new_bfqq,
		 * release rq reference on bfqq
		 */
		FUNC6(bfqq);
		rq->elv.priv[1] = new_bfqq;
		bfqq = new_bfqq;
	}

	FUNC11(bfqd, bfqq);
	FUNC9(bfqd, bfqq, FUNC1(rq));
	FUNC10(bfqd, bfqq, rq);

	waiting = bfqq && FUNC3(bfqq);
	FUNC2(rq);
	idle_timer_disabled = waiting && !FUNC3(bfqq);

	rq->fifo_time = FUNC13() + bfqd->bfq_fifo_expire[FUNC15(rq)];
	FUNC14(&rq->queuelist, &bfqq->fifo);

	FUNC7(bfqd, bfqq, rq);

	return idle_timer_disabled;
}