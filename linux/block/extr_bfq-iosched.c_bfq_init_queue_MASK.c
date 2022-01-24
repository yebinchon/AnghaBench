#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int /*<<< orphan*/  node; int /*<<< orphan*/  queue_lock; struct elevator_queue* elevator; } ;
struct elevator_type {int dummy; } ;
struct elevator_queue {int /*<<< orphan*/  kobj; struct bfq_data* elevator_data; } ;
struct TYPE_6__ {int prio_changed; int /*<<< orphan*/  new_weight; } ;
struct TYPE_7__ {TYPE_2__ entity; int /*<<< orphan*/  new_ioprio; int /*<<< orphan*/  new_ioprio_class; int /*<<< orphan*/  ref; } ;
struct TYPE_5__ {int /*<<< orphan*/  function; } ;
struct bfq_data {int hw_tag; size_t nonrot_with_queueing; int bfq_requests_within_timer; int bfq_large_burst_thresh; int low_latency; int bfq_wr_coeff; int bfq_wr_max_softrt_rate; int rate_dur_prod; int peak_rate; int /*<<< orphan*/  root_group; TYPE_3__ oom_bfqq; int /*<<< orphan*/  lock; struct request_queue* queue; scalar_t__ wr_busy_queues; void* bfq_wr_min_inter_arr_async; void* bfq_wr_min_idle_time; scalar_t__ bfq_wr_max_time; void* bfq_wr_rt_max_time; void* bfq_burst_interval; int /*<<< orphan*/  bfq_timeout; int /*<<< orphan*/  bfq_slice_idle; int /*<<< orphan*/  bfq_back_penalty; int /*<<< orphan*/  bfq_back_max; void** bfq_fifo_expire; int /*<<< orphan*/  bfq_max_budget; int /*<<< orphan*/  burst_list; int /*<<< orphan*/  idle_list; int /*<<< orphan*/  active_list; scalar_t__ num_groups_with_pending_reqs; int /*<<< orphan*/  queue_weights_tree; TYPE_1__ idle_slice_timer; int /*<<< orphan*/  dispatch; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFQ_DEFAULT_QUEUE_IOPRIO ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IOPRIO_CLASS_BE ; 
 int /*<<< orphan*/  RB_ROOT_CACHED ; 
 int /*<<< orphan*/  bfq_back_max ; 
 int /*<<< orphan*/  bfq_back_penalty ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfq_default_max_budget ; 
 void** bfq_fifo_expire ; 
 int /*<<< orphan*/  bfq_idle_slice_timer ; 
 int /*<<< orphan*/  FUNC4 (struct bfq_data*,TYPE_3__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct bfq_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfq_slice_idle ; 
 int /*<<< orphan*/  bfq_timeout ; 
 size_t FUNC8 (struct request_queue*) ; 
 struct elevator_queue* FUNC9 (struct request_queue*,struct elevator_type*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct bfq_data*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct bfq_data* FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC14 (int) ; 
 int* ref_rate ; 
 int* ref_wr_duration ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct request_queue*) ; 

__attribute__((used)) static int FUNC19(struct request_queue *q, struct elevator_type *e)
{
	struct bfq_data *bfqd;
	struct elevator_queue *eq;

	eq = FUNC9(q, e);
	if (!eq)
		return -ENOMEM;

	bfqd = FUNC13(sizeof(*bfqd), GFP_KERNEL, q->node);
	if (!bfqd) {
		FUNC12(&eq->kobj);
		return -ENOMEM;
	}
	eq->elevator_data = bfqd;

	FUNC16(&q->queue_lock);
	q->elevator = eq;
	FUNC17(&q->queue_lock);

	/*
	 * Our fallback bfqq if bfq_find_alloc_queue() runs into OOM issues.
	 * Grab a permanent reference to it, so that the normal code flow
	 * will not attempt to free it.
	 */
	FUNC4(bfqd, &bfqd->oom_bfqq, NULL, 1, 0);
	bfqd->oom_bfqq.ref++;
	bfqd->oom_bfqq.new_ioprio = BFQ_DEFAULT_QUEUE_IOPRIO;
	bfqd->oom_bfqq.new_ioprio_class = IOPRIO_CLASS_BE;
	bfqd->oom_bfqq.entity.new_weight =
		FUNC7(bfqd->oom_bfqq.new_ioprio);

	/* oom_bfqq does not participate to bursts */
	FUNC2(&bfqd->oom_bfqq);

	/*
	 * Trigger weight initialization, according to ioprio, at the
	 * oom_bfqq's first activation. The oom_bfqq's ioprio and ioprio
	 * class won't be changed any more.
	 */
	bfqd->oom_bfqq.entity.prio_changed = 1;

	bfqd->queue = q;

	FUNC1(&bfqd->dispatch);

	FUNC10(&bfqd->idle_slice_timer, CLOCK_MONOTONIC,
		     HRTIMER_MODE_REL);
	bfqd->idle_slice_timer.function = bfq_idle_slice_timer;

	bfqd->queue_weights_tree = RB_ROOT_CACHED;
	bfqd->num_groups_with_pending_reqs = 0;

	FUNC1(&bfqd->active_list);
	FUNC1(&bfqd->idle_list);
	FUNC0(&bfqd->burst_list);

	bfqd->hw_tag = -1;
	bfqd->nonrot_with_queueing = FUNC8(bfqd->queue);

	bfqd->bfq_max_budget = bfq_default_max_budget;

	bfqd->bfq_fifo_expire[0] = bfq_fifo_expire[0];
	bfqd->bfq_fifo_expire[1] = bfq_fifo_expire[1];
	bfqd->bfq_back_max = bfq_back_max;
	bfqd->bfq_back_penalty = bfq_back_penalty;
	bfqd->bfq_slice_idle = bfq_slice_idle;
	bfqd->bfq_timeout = bfq_timeout;

	bfqd->bfq_requests_within_timer = 120;

	bfqd->bfq_large_burst_thresh = 8;
	bfqd->bfq_burst_interval = FUNC14(180);

	bfqd->low_latency = true;

	/*
	 * Trade-off between responsiveness and fairness.
	 */
	bfqd->bfq_wr_coeff = 30;
	bfqd->bfq_wr_rt_max_time = FUNC14(300);
	bfqd->bfq_wr_max_time = 0;
	bfqd->bfq_wr_min_idle_time = FUNC14(2000);
	bfqd->bfq_wr_min_inter_arr_async = FUNC14(500);
	bfqd->bfq_wr_max_softrt_rate = 7000; /*
					      * Approximate rate required
					      * to playback or record a
					      * high-definition compressed
					      * video.
					      */
	bfqd->wr_busy_queues = 0;

	/*
	 * Begin by assuming, optimistically, that the device peak
	 * rate is equal to 2/3 of the highest reference rate.
	 */
	bfqd->rate_dur_prod = ref_rate[FUNC8(bfqd->queue)] *
		ref_wr_duration[FUNC8(bfqd->queue)];
	bfqd->peak_rate = ref_rate[FUNC8(bfqd->queue)] * 2 / 3;

	FUNC15(&bfqd->lock);

	/*
	 * The invocation of the next bfq_create_group_hierarchy
	 * function is the head of a chain of function calls
	 * (bfq_create_group_hierarchy->blkcg_activate_policy->
	 * blk_mq_freeze_queue) that may lead to the invocation of the
	 * has_work hook function. For this reason,
	 * bfq_create_group_hierarchy is invoked only after all
	 * scheduler data has been initialized, apart from the fields
	 * that can be initialized only after invoking
	 * bfq_create_group_hierarchy. This, in particular, enables
	 * has_work to correctly return false. Of course, to avoid
	 * other inconsistencies, the blk-mq stack must then refrain
	 * from invoking further scheduler hooks before this init
	 * function is finished.
	 */
	bfqd->root_group = FUNC3(bfqd, q->node);
	if (!bfqd->root_group)
		goto out_free;
	FUNC6(bfqd->root_group, bfqd);
	FUNC5(&bfqd->oom_bfqq.entity, bfqd->root_group);

	FUNC18(q);
	return 0;

out_free:
	FUNC11(bfqd);
	FUNC12(&eq->kobj);
	return -ENOMEM;
}