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
struct bfq_queue {scalar_t__ dispatched; int /*<<< orphan*/  sort_list; int /*<<< orphan*/  budget_timeout; } ;
struct bfq_data {int /*<<< orphan*/  nonrot_with_queueing; } ;
typedef  enum bfqq_expiration { ____Placeholder_bfqq_expiration } bfqq_expiration ;

/* Variables and functions */
 int BFQQE_PREEMPTED ; 
 scalar_t__ FUNC0 (struct bfq_queue*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct bfq_data*) ; 
 scalar_t__ FUNC3 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfq_data*,struct bfq_queue*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct bfq_data*,struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct bfq_data*,struct bfq_queue*,int) ; 
 scalar_t__ FUNC8 (struct bfq_data*,struct bfq_queue*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static bool FUNC10(struct bfq_data *bfqd, struct bfq_queue *bfqq,
			      enum bfqq_expiration reason)
{
	/*
	 * If this bfqq is shared between multiple processes, check
	 * to make sure that those processes are still issuing I/Os
	 * within the mean seek distance. If not, it may be time to
	 * break the queues apart again.
	 */
	if (FUNC3(bfqq) && FUNC0(bfqq))
		FUNC5(bfqq);

	/*
	 * Consider queues with a higher finish virtual time than
	 * bfqq. If idling_needed_for_service_guarantees(bfqq) returns
	 * true, then bfqq's bandwidth would be violated if an
	 * uncontrolled amount of I/O from these queues were
	 * dispatched while bfqq is waiting for its new I/O to
	 * arrive. This is exactly what may happen if this is a forced
	 * expiration caused by a preemption attempt, and if bfqq is
	 * not re-scheduled. To prevent this from happening, re-queue
	 * bfqq if it needs I/O-dispatch plugging, even if it is
	 * empty. By doing so, bfqq is granted to be served before the
	 * above queues (provided that bfqq is of course eligible).
	 */
	if (FUNC1(&bfqq->sort_list) &&
	    !(reason == BFQQE_PREEMPTED &&
	      FUNC8(bfqd, bfqq))) {
		if (bfqq->dispatched == 0)
			/*
			 * Overloading budget_timeout field to store
			 * the time at which the queue remains with no
			 * backlog and no outstanding request; used by
			 * the weight-raising mechanism.
			 */
			bfqq->budget_timeout = jiffies;

		FUNC4(bfqd, bfqq, true);
	} else {
		FUNC7(bfqd, bfqq, true);
		/*
		 * Resort priority tree of potential close cooperators.
		 * See comments on bfq_pos_tree_add_move() for the unlikely().
		 */
		if (FUNC9(!bfqd->nonrot_with_queueing &&
			     !FUNC1(&bfqq->sort_list)))
			FUNC6(bfqd, bfqq);
	}

	/*
	 * All in-service entities must have been properly deactivated
	 * or requeued before executing the next function, which
	 * resets all in-service entities as no more in service. This
	 * may cause bfqq to be freed. If this happens, the next
	 * function returns true.
	 */
	return FUNC2(bfqd);
}