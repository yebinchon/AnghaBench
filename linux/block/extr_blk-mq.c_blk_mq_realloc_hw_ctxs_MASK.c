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
struct request_queue {int nr_hw_queues; int /*<<< orphan*/  sysfs_lock; struct blk_mq_hw_ctx** queue_hw_ctx; } ;
struct blk_mq_tag_set {int nr_hw_queues; int /*<<< orphan*/ * map; } ;
struct blk_mq_hw_ctx {int numa_node; scalar_t__ tags; } ;

/* Variables and functions */
 size_t HCTX_TYPE_DEFAULT ; 
 struct blk_mq_hw_ctx* FUNC0 (struct blk_mq_tag_set*,struct request_queue*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,struct blk_mq_tag_set*,struct blk_mq_hw_ctx*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct blk_mq_tag_set*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 

__attribute__((used)) static void FUNC7(struct blk_mq_tag_set *set,
						struct request_queue *q)
{
	int i, j, end;
	struct blk_mq_hw_ctx **hctxs = q->queue_hw_ctx;

	/* protect against switching io scheduler  */
	FUNC4(&q->sysfs_lock);
	for (i = 0; i < set->nr_hw_queues; i++) {
		int node;
		struct blk_mq_hw_ctx *hctx;

		node = FUNC3(&set->map[HCTX_TYPE_DEFAULT], i);
		/*
		 * If the hw queue has been mapped to another numa node,
		 * we need to realloc the hctx. If allocation fails, fallback
		 * to use the previous one.
		 */
		if (hctxs[i] && (hctxs[i]->numa_node == node))
			continue;

		hctx = FUNC0(set, q, i, node);
		if (hctx) {
			if (hctxs[i])
				FUNC1(q, set, hctxs[i], i);
			hctxs[i] = hctx;
		} else {
			if (hctxs[i])
				FUNC6("Allocate new hctx on node %d fails,\
						fallback to previous one on node %d\n",
						node, hctxs[i]->numa_node);
			else
				break;
		}
	}
	/*
	 * Increasing nr_hw_queues fails. Free the newly allocated
	 * hctxs and keep the previous q->nr_hw_queues.
	 */
	if (i != set->nr_hw_queues) {
		j = q->nr_hw_queues;
		end = i;
	} else {
		j = i;
		end = q->nr_hw_queues;
		q->nr_hw_queues = set->nr_hw_queues;
	}

	for (; j < end; j++) {
		struct blk_mq_hw_ctx *hctx = hctxs[j];

		if (hctx) {
			if (hctx->tags)
				FUNC2(set, j);
			FUNC1(q, set, hctx, j);
			hctxs[j] = NULL;
		}
	}
	FUNC5(&q->sysfs_lock);
}