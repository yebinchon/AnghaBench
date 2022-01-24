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
struct bio {int dummy; } ;
struct bfq_queue {int /*<<< orphan*/  split_time; int /*<<< orphan*/  burst_list_node; } ;
struct bfq_io_cq {scalar_t__ was_in_burst_list; scalar_t__ saved_in_large_burst; } ;
struct bfq_data {int /*<<< orphan*/  burst_list; scalar_t__ large_burst; struct bfq_queue oom_bfqq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfq_queue*) ; 
 struct bfq_queue* FUNC1 (struct bfq_data*,struct bio*,int,struct bfq_io_cq*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfq_io_cq*,struct bfq_queue*,int) ; 
 struct bfq_queue* FUNC5 (struct bfq_io_cq*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct bfq_queue *FUNC8(struct bfq_data *bfqd,
						   struct bfq_io_cq *bic,
						   struct bio *bio,
						   bool split, bool is_sync,
						   bool *new_queue)
{
	struct bfq_queue *bfqq = FUNC5(bic, is_sync);

	if (FUNC7(bfqq && bfqq != &bfqd->oom_bfqq))
		return bfqq;

	if (new_queue)
		*new_queue = true;

	if (bfqq)
		FUNC3(bfqq);
	bfqq = FUNC1(bfqd, bio, is_sync, bic);

	FUNC4(bic, bfqq, is_sync);
	if (split && is_sync) {
		if ((bic->was_in_burst_list && bfqd->large_burst) ||
		    bic->saved_in_large_burst)
			FUNC2(bfqq);
		else {
			FUNC0(bfqq);
			if (bic->was_in_burst_list)
				/*
				 * If bfqq was in the current
				 * burst list before being
				 * merged, then we have to add
				 * it back. And we do not need
				 * to increase burst_size, as
				 * we did not decrement
				 * burst_size when we removed
				 * bfqq from the burst list as
				 * a consequence of a merge
				 * (see comments in
				 * bfq_put_queue). In this
				 * respect, it would be rather
				 * costly to know whether the
				 * current burst list is still
				 * the same burst list from
				 * which bfqq was removed on
				 * the merge. To avoid this
				 * cost, if bfqq was in a
				 * burst list, then we add
				 * bfqq to the current burst
				 * list without any further
				 * check. This can cause
				 * inappropriate insertions,
				 * but rarely enough to not
				 * harm the detection of large
				 * bursts significantly.
				 */
				FUNC6(&bfqq->burst_list_node,
					       &bfqd->burst_list);
		}
		bfqq->split_time = jiffies;
	}

	return bfqq;
}