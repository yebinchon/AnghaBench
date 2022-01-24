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
struct bfq_queue {struct bfq_data* bfqd; } ;
struct bfq_data {scalar_t__ bfq_slice_idle; int /*<<< orphan*/  strict_guarantees; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfq_queue*) ; 
 scalar_t__ FUNC1 (struct bfq_queue*) ; 
 int FUNC2 (struct bfq_data*,struct bfq_queue*) ; 
 int FUNC3 (struct bfq_data*,struct bfq_queue*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct bfq_queue *bfqq)
{
	struct bfq_data *bfqd = bfqq->bfqd;
	bool idling_boosts_thr_with_no_issue, idling_needed_for_service_guar;

	if (FUNC4(bfqd->strict_guarantees))
		return true;

	/*
	 * Idling is performed only if slice_idle > 0. In addition, we
	 * do not idle if
	 * (a) bfqq is async
	 * (b) bfqq is in the idle io prio class: in this case we do
	 * not idle because we want to minimize the bandwidth that
	 * queues in this class can steal to higher-priority queues
	 */
	if (bfqd->bfq_slice_idle == 0 || !FUNC0(bfqq) ||
	   FUNC1(bfqq))
		return false;

	idling_boosts_thr_with_no_issue =
		FUNC2(bfqd, bfqq);

	idling_needed_for_service_guar =
		FUNC3(bfqd, bfqq);

	/*
	 * We have now the two components we need to compute the
	 * return value of the function, which is true only if idling
	 * either boosts the throughput (without issues), or is
	 * necessary to preserve service guarantees.
	 */
	return idling_boosts_thr_with_no_issue ||
		idling_needed_for_service_guar;
}