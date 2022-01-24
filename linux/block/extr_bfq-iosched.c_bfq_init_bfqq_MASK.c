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
struct TYPE_4__ {scalar_t__ last_end_request; } ;
struct TYPE_3__ {int /*<<< orphan*/  rb_node; } ;
struct bfq_queue {int max_budget; int wr_coeff; int seek_history; void* soft_rt_next_start; void* split_time; void* wr_start_at_switch_to_srt; void* last_wr_start_finish; void* budget_timeout; int /*<<< orphan*/  pid; TYPE_2__ ttime; struct bfq_data* bfqd; scalar_t__ ref; int /*<<< orphan*/  woken_list; int /*<<< orphan*/  woken_list_node; int /*<<< orphan*/  burst_list_node; int /*<<< orphan*/  fifo; TYPE_1__ entity; } ;
struct bfq_io_cq {int dummy; } ;
struct bfq_data {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC8 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC9 (struct bfq_queue*) ; 
 int FUNC10 (struct bfq_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct bfq_queue*,struct bfq_io_cq*) ; 
 void* FUNC12 () ; 
 void* jiffies ; 
 scalar_t__ FUNC13 () ; 

__attribute__((used)) static void FUNC14(struct bfq_data *bfqd, struct bfq_queue *bfqq,
			  struct bfq_io_cq *bic, pid_t pid, int is_sync)
{
	FUNC3(&bfqq->entity.rb_node);
	FUNC2(&bfqq->fifo);
	FUNC1(&bfqq->burst_list_node);
	FUNC1(&bfqq->woken_list_node);
	FUNC0(&bfqq->woken_list);

	bfqq->ref = 0;
	bfqq->bfqd = bfqd;

	if (bic)
		FUNC11(bfqq, bic);

	if (is_sync) {
		/*
		 * No need to mark as has_short_ttime if in
		 * idle_class, because no device idling is performed
		 * for queues in idle class
		 */
		if (!FUNC4(bfqq))
			/* tentatively mark as has_short_ttime */
			FUNC7(bfqq);
		FUNC9(bfqq);
		FUNC8(bfqq);
	} else
		FUNC5(bfqq);

	/* set end request to minus infinity from now */
	bfqq->ttime.last_end_request = FUNC13() + 1;

	FUNC6(bfqq);

	bfqq->pid = pid;

	/* Tentative initial value to trade off between thr and lat */
	bfqq->max_budget = (2 * FUNC10(bfqd)) / 3;
	bfqq->budget_timeout = FUNC12();

	bfqq->wr_coeff = 1;
	bfqq->last_wr_start_finish = jiffies;
	bfqq->wr_start_at_switch_to_srt = FUNC12();
	bfqq->split_time = FUNC12();

	/*
	 * To not forget the possibly high bandwidth consumed by a
	 * process/queue in the recent past,
	 * bfq_bfqq_softrt_next_start() returns a value at least equal
	 * to the current value of bfqq->soft_rt_next_start (see
	 * comments on bfq_bfqq_softrt_next_start).  Set
	 * soft_rt_next_start to now, to mean that bfqq has consumed
	 * no bandwidth so far.
	 */
	bfqq->soft_rt_next_start = jiffies;

	/* first request is almost certainly seeky */
	bfqq->seek_history = 1;
}