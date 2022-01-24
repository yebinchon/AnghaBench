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
struct TYPE_3__ {int /*<<< orphan*/  orig_weight; } ;
struct bfq_queue {int /*<<< orphan*/  wr_cur_max_time; int /*<<< orphan*/  last_wr_start_finish; int /*<<< orphan*/  wr_start_at_switch_to_srt; int /*<<< orphan*/  wr_coeff; TYPE_2__* bfqd; int /*<<< orphan*/  burst_list_node; int /*<<< orphan*/  ttime; TYPE_1__ entity; struct bfq_io_cq* bic; } ;
struct bfq_io_cq {int was_in_burst_list; int /*<<< orphan*/  saved_wr_cur_max_time; int /*<<< orphan*/  saved_last_wr_start_finish; int /*<<< orphan*/  saved_wr_start_at_switch_to_srt; int /*<<< orphan*/  saved_wr_coeff; int /*<<< orphan*/  saved_in_large_burst; int /*<<< orphan*/  saved_IO_bound; int /*<<< orphan*/  saved_has_short_ttime; int /*<<< orphan*/  saved_ttime; int /*<<< orphan*/  saved_weight; } ;
struct TYPE_4__ {int /*<<< orphan*/  bfq_wr_coeff; scalar_t__ low_latency; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfq_queue*) ; 
 scalar_t__ FUNC3 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct bfq_queue *bfqq)
{
	struct bfq_io_cq *bic = bfqq->bic;

	/*
	 * If !bfqq->bic, the queue is already shared or its requests
	 * have already been redirected to a shared queue; both idle window
	 * and weight raising state have already been saved. Do nothing.
	 */
	if (!bic)
		return;

	bic->saved_weight = bfqq->entity.orig_weight;
	bic->saved_ttime = bfqq->ttime;
	bic->saved_has_short_ttime = FUNC1(bfqq);
	bic->saved_IO_bound = FUNC0(bfqq);
	bic->saved_in_large_burst = FUNC2(bfqq);
	bic->was_in_burst_list = !FUNC6(&bfqq->burst_list_node);
	if (FUNC7(FUNC3(bfqq) &&
		     !FUNC2(bfqq) &&
		     bfqq->bfqd->low_latency)) {
		/*
		 * bfqq being merged right after being created: bfqq
		 * would have deserved interactive weight raising, but
		 * did not make it to be set in a weight-raised state,
		 * because of this early merge.	Store directly the
		 * weight-raising state that would have been assigned
		 * to bfqq, so that to avoid that bfqq unjustly fails
		 * to enjoy weight raising if split soon.
		 */
		bic->saved_wr_coeff = bfqq->bfqd->bfq_wr_coeff;
		bic->saved_wr_start_at_switch_to_srt = FUNC4();
		bic->saved_wr_cur_max_time = FUNC5(bfqq->bfqd);
		bic->saved_last_wr_start_finish = jiffies;
	} else {
		bic->saved_wr_coeff = bfqq->wr_coeff;
		bic->saved_wr_start_at_switch_to_srt =
			bfqq->wr_start_at_switch_to_srt;
		bic->saved_last_wr_start_finish = bfqq->last_wr_start_finish;
		bic->saved_wr_cur_max_time = bfqq->wr_cur_max_time;
	}
}