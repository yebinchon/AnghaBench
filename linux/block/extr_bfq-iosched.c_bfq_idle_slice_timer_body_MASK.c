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
struct bfq_queue {scalar_t__* queued; struct bfq_data* bfqd; } ;
struct bfq_data {int /*<<< orphan*/  lock; struct bfq_queue* in_service_queue; } ;
typedef  enum bfqq_expiration { ____Placeholder_bfqq_expiration } bfqq_expiration ;

/* Variables and functions */
 int BFQQE_BUDGET_TIMEOUT ; 
 int BFQQE_TOO_IDLE ; 
 scalar_t__ FUNC0 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfq_data*,struct bfq_queue*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfq_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct bfq_queue *bfqq)
{
	struct bfq_data *bfqd = bfqq->bfqd;
	enum bfqq_expiration reason;
	unsigned long flags;

	FUNC4(&bfqd->lock, flags);
	FUNC2(bfqq);

	if (bfqq != bfqd->in_service_queue) {
		FUNC5(&bfqd->lock, flags);
		return;
	}

	if (FUNC0(bfqq))
		/*
		 * Also here the queue can be safely expired
		 * for budget timeout without wasting
		 * guarantees
		 */
		reason = BFQQE_BUDGET_TIMEOUT;
	else if (bfqq->queued[0] == 0 && bfqq->queued[1] == 0)
		/*
		 * The queue may not be empty upon timer expiration,
		 * because we may not disable the timer when the
		 * first request of the in-service queue arrives
		 * during disk idling.
		 */
		reason = BFQQE_TOO_IDLE;
	else
		goto schedule_dispatch;

	FUNC1(bfqd, bfqq, true, reason);

schedule_dispatch:
	FUNC5(&bfqd->lock, flags);
	FUNC3(bfqd);
}