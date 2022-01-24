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
struct request_queue {int dummy; } ;
struct blk_mq_tag_set {int numa_node; int flags; int /*<<< orphan*/  cmd_size; } ;
struct TYPE_2__ {int /*<<< orphan*/  entry; } ;
struct blk_mq_hw_ctx {int numa_node; int flags; int /*<<< orphan*/  cpumask; struct blk_mq_hw_ctx* ctxs; int /*<<< orphan*/  ctx_map; int /*<<< orphan*/  srcu; int /*<<< orphan*/  fq; TYPE_1__ dispatch_wait; int /*<<< orphan*/  dispatch_wait_lock; scalar_t__ nr_ctx; int /*<<< orphan*/  hctx_list; struct request_queue* queue; int /*<<< orphan*/  dispatch; int /*<<< orphan*/  lock; int /*<<< orphan*/  run_work; int /*<<< orphan*/  nr_active; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int BLK_MQ_F_BLOCKING ; 
 int BLK_MQ_F_TAG_SHARED ; 
 int GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int NUMA_NO_NODE ; 
 int __GFP_NORETRY ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  blk_mq_dispatch_wake ; 
 int /*<<< orphan*/  FUNC4 (struct blk_mq_hw_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct blk_mq_tag_set*) ; 
 int /*<<< orphan*/  blk_mq_run_work_fn ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct blk_mq_hw_ctx*) ; 
 struct blk_mq_hw_ctx* FUNC11 (int /*<<< orphan*/ ,int,int,int) ; 
 struct blk_mq_hw_ctx* FUNC12 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static struct blk_mq_hw_ctx *
FUNC17(struct request_queue *q, struct blk_mq_tag_set *set,
		int node)
{
	struct blk_mq_hw_ctx *hctx;
	gfp_t gfp = GFP_NOIO | __GFP_NOWARN | __GFP_NORETRY;

	hctx = FUNC12(FUNC5(set), gfp, node);
	if (!hctx)
		goto fail_alloc_hctx;

	if (!FUNC16(&hctx->cpumask, gfp, node))
		goto free_hctx;

	FUNC2(&hctx->nr_active, 0);
	if (node == NUMA_NO_NODE)
		node = set->numa_node;
	hctx->numa_node = node;

	FUNC0(&hctx->run_work, blk_mq_run_work_fn);
	FUNC15(&hctx->lock);
	FUNC1(&hctx->dispatch);
	hctx->queue = q;
	hctx->flags = set->flags & ~BLK_MQ_F_TAG_SHARED;

	FUNC1(&hctx->hctx_list);

	/*
	 * Allocate space for all possible cpus to avoid allocation at
	 * runtime
	 */
	hctx->ctxs = FUNC11(nr_cpu_ids, sizeof(void *),
			gfp, node);
	if (!hctx->ctxs)
		goto free_cpumask;

	if (FUNC14(&hctx->ctx_map, nr_cpu_ids, FUNC7(8),
				gfp, node))
		goto free_ctxs;
	hctx->nr_ctx = 0;

	FUNC15(&hctx->dispatch_wait_lock);
	FUNC9(&hctx->dispatch_wait, blk_mq_dispatch_wake);
	FUNC1(&hctx->dispatch_wait.entry);

	hctx->fq = FUNC3(q, hctx->numa_node, set->cmd_size,
			gfp);
	if (!hctx->fq)
		goto free_bitmap;

	if (hctx->flags & BLK_MQ_F_BLOCKING)
		FUNC8(hctx->srcu);
	FUNC4(hctx);

	return hctx;

 free_bitmap:
	FUNC13(&hctx->ctx_map);
 free_ctxs:
	FUNC10(hctx->ctxs);
 free_cpumask:
	FUNC6(hctx->cpumask);
 free_hctx:
	FUNC10(hctx);
 fail_alloc_hctx:
	return NULL;
}