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
struct request {int cmd_flags; } ;
struct bfq_queue {int* queued; scalar_t__ last_request_pos; int /*<<< orphan*/  meta_pending; } ;
struct bfq_data {int /*<<< orphan*/  idle_slice_timer; struct bfq_queue* in_service_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFQQE_BUDGET_TIMEOUT ; 
 int REQ_META ; 
 int FUNC0 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfq_data*,struct bfq_queue*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfq_queue*) ; 
 scalar_t__ FUNC4 (struct request*) ; 
 int FUNC5 (struct request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct bfq_data*,struct bfq_queue*) ; 
 size_t FUNC8 (struct request*) ; 

__attribute__((used)) static void FUNC9(struct bfq_data *bfqd, struct bfq_queue *bfqq,
			    struct request *rq)
{
	if (rq->cmd_flags & REQ_META)
		bfqq->meta_pending++;

	bfqq->last_request_pos = FUNC4(rq) + FUNC5(rq);

	if (bfqq == bfqd->in_service_queue && FUNC2(bfqq)) {
		bool small_req = bfqq->queued[FUNC8(rq)] == 1 &&
				 FUNC5(rq) < 32;
		bool budget_timeout = FUNC0(bfqq);

		/*
		 * There is just this request queued: if
		 * - the request is small, and
		 * - we are idling to boost throughput, and
		 * - the queue is not to be expired,
		 * then just exit.
		 *
		 * In this way, if the device is being idled to wait
		 * for a new request from the in-service queue, we
		 * avoid unplugging the device and committing the
		 * device to serve just a small request. In contrast
		 * we wait for the block layer to decide when to
		 * unplug the device: hopefully, new requests will be
		 * merged to this one quickly, then the device will be
		 * unplugged and larger requests will be dispatched.
		 */
		if (small_req && FUNC7(bfqd, bfqq) &&
		    !budget_timeout)
			return;

		/*
		 * A large enough request arrived, or idling is being
		 * performed to preserve service guarantees, or
		 * finally the queue is to be expired: in all these
		 * cases disk idling is to be stopped, so clear
		 * wait_request flag and reset timer.
		 */
		FUNC3(bfqq);
		FUNC6(&bfqd->idle_slice_timer);

		/*
		 * The queue is not empty, because a new request just
		 * arrived. Hence we can safely expire the queue, in
		 * case of budget timeout, without risking that the
		 * timestamps of the queue are not updated correctly.
		 * See [1] for more details.
		 */
		if (budget_timeout)
			FUNC1(bfqd, bfqq, false,
					BFQQE_BUDGET_TIMEOUT);
	}
}