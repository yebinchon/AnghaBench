#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct request_queue {scalar_t__ id; int node; int /*<<< orphan*/  bio_split; TYPE_1__* backing_dev_info; int /*<<< orphan*/  stats; int /*<<< orphan*/  q_usage_counter; int /*<<< orphan*/  mq_freeze_lock; int /*<<< orphan*/  mq_freeze_wq; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  sysfs_dir_lock; int /*<<< orphan*/  sysfs_lock; int /*<<< orphan*/  blk_trace_mutex; int /*<<< orphan*/  kobj; int /*<<< orphan*/  blkg_list; int /*<<< orphan*/  icq_list; int /*<<< orphan*/  timeout_work; int /*<<< orphan*/  timeout; int /*<<< orphan*/ * last_merge; } ;
typedef  int gfp_t ;
struct TYPE_3__ {char* name; int /*<<< orphan*/  laptop_mode_wb_timer; int /*<<< orphan*/  capabilities; int /*<<< orphan*/  ra_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDI_CAP_CGROUP_WRITEBACK ; 
 int /*<<< orphan*/  BIOSET_NEED_BVECS ; 
 int /*<<< orphan*/  BIO_POOL_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PERCPU_REF_INIT_ATOMIC ; 
 int /*<<< orphan*/  VM_READAHEAD_PAGES ; 
 int __GFP_ZERO ; 
 TYPE_1__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  blk_queue_ida ; 
 int /*<<< orphan*/  blk_queue_ktype ; 
 int /*<<< orphan*/  blk_queue_usage_counter_release ; 
 int /*<<< orphan*/  blk_requestq_cachep ; 
 int /*<<< orphan*/  blk_rq_timed_out_timer ; 
 int /*<<< orphan*/  blk_timeout_work ; 
 scalar_t__ FUNC8 (struct request_queue*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct request_queue* FUNC12 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  laptop_mode_timer_fn ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct request_queue *FUNC20(gfp_t gfp_mask, int node_id)
{
	struct request_queue *q;
	int ret;

	q = FUNC12(blk_requestq_cachep,
				gfp_mask | __GFP_ZERO, node_id);
	if (!q)
		return NULL;

	q->last_merge = NULL;

	q->id = FUNC9(&blk_queue_ida, 0, 0, gfp_mask);
	if (q->id < 0)
		goto fail_q;

	ret = FUNC5(&q->bio_split, BIO_POOL_SIZE, 0, BIOSET_NEED_BVECS);
	if (ret)
		goto fail_id;

	q->backing_dev_info = FUNC2(gfp_mask, node_id);
	if (!q->backing_dev_info)
		goto fail_split;

	q->stats = FUNC6();
	if (!q->stats)
		goto fail_stats;

	q->backing_dev_info->ra_pages = VM_READAHEAD_PAGES;
	q->backing_dev_info->capabilities = BDI_CAP_CGROUP_WRITEBACK;
	q->backing_dev_info->name = "block";
	q->node = node_id;

	FUNC19(&q->backing_dev_info->laptop_mode_wb_timer,
		    laptop_mode_timer_fn, 0);
	FUNC19(&q->timeout, blk_rq_timed_out_timer, 0);
	FUNC1(&q->timeout_work, blk_timeout_work);
	FUNC0(&q->icq_list);
#ifdef CONFIG_BLK_CGROUP
	INIT_LIST_HEAD(&q->blkg_list);
#endif

	FUNC14(&q->kobj, &blk_queue_ktype);

#ifdef CONFIG_BLK_DEV_IO_TRACE
	mutex_init(&q->blk_trace_mutex);
#endif
	FUNC15(&q->sysfs_lock);
	FUNC15(&q->sysfs_dir_lock);
	FUNC18(&q->queue_lock);

	FUNC11(&q->mq_freeze_wq);
	FUNC15(&q->mq_freeze_lock);

	/*
	 * Init percpu_ref in atomic mode so that it's faster to shutdown.
	 * See blk_register_queue() for details.
	 */
	if (FUNC17(&q->q_usage_counter,
				blk_queue_usage_counter_release,
				PERCPU_REF_INIT_ATOMIC, GFP_KERNEL))
		goto fail_bdi;

	if (FUNC8(q))
		goto fail_ref;

	return q;

fail_ref:
	FUNC16(&q->q_usage_counter);
fail_bdi:
	FUNC7(q->stats);
fail_stats:
	FUNC3(q->backing_dev_info);
fail_split:
	FUNC4(&q->bio_split);
fail_id:
	FUNC10(&blk_queue_ida, q->id);
fail_q:
	FUNC13(blk_requestq_cachep, q);
	return NULL;
}