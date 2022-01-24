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
typedef  int u32 ;
struct TYPE_2__ {int service; } ;
struct bfq_queue {TYPE_1__ entity; } ;
struct bfq_data {int bfq_max_budget; int /*<<< orphan*/  queue; int /*<<< orphan*/  last_budget_start; int /*<<< orphan*/  last_idling_start; } ;
typedef  int /*<<< orphan*/  ktime_t ;
typedef  enum bfqq_expiration { ____Placeholder_bfqq_expiration } bfqq_expiration ;

/* Variables and functions */
 int FUNC0 (struct bfq_queue*) ; 
 unsigned long BFQ_MIN_TT ; 
 unsigned long NSEC_PER_MSEC ; 
 int USEC_PER_MSEC ; 
 int /*<<< orphan*/  FUNC1 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfq_data*,struct bfq_queue*,char*,int) ; 
 unsigned long bfq_slice_idle ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(struct bfq_data *bfqd, struct bfq_queue *bfqq,
				 bool compensate, enum bfqq_expiration reason,
				 unsigned long *delta_ms)
{
	ktime_t delta_ktime;
	u32 delta_usecs;
	bool slow = FUNC0(bfqq); /* if delta too short, use seekyness */

	if (!FUNC1(bfqq))
		return false;

	if (compensate)
		delta_ktime = bfqd->last_idling_start;
	else
		delta_ktime = FUNC4();
	delta_ktime = FUNC5(delta_ktime, bfqd->last_budget_start);
	delta_usecs = FUNC6(delta_ktime);

	/* don't use too short time intervals */
	if (delta_usecs < 1000) {
		if (FUNC3(bfqd->queue))
			 /*
			  * give same worst-case guarantees as idling
			  * for seeky
			  */
			*delta_ms = BFQ_MIN_TT / NSEC_PER_MSEC;
		else /* charge at least one seek */
			*delta_ms = bfq_slice_idle / NSEC_PER_MSEC;

		return slow;
	}

	*delta_ms = delta_usecs / USEC_PER_MSEC;

	/*
	 * Use only long (> 20ms) intervals to filter out excessive
	 * spikes in service rate estimation.
	 */
	if (delta_usecs > 20000) {
		/*
		 * Caveat for rotational devices: processes doing I/O
		 * in the slower disk zones tend to be slow(er) even
		 * if not seeky. In this respect, the estimated peak
		 * rate is likely to be an average over the disk
		 * surface. Accordingly, to not be too harsh with
		 * unlucky processes, a process is deemed slow only if
		 * its rate has been lower than half of the estimated
		 * peak rate.
		 */
		slow = bfqq->entity.service < bfqd->bfq_max_budget / 2;
	}

	FUNC2(bfqd, bfqq, "bfq_bfqq_is_slow: slow %d", slow);

	return slow;
}