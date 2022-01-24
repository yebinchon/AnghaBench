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
struct request_queue {int dummy; } ;
struct blk_mq_tag_set {TYPE_2__* ops; int /*<<< orphan*/  driver_data; int /*<<< orphan*/ * tags; } ;
struct blk_mq_hw_ctx {unsigned int queue_num; int /*<<< orphan*/  numa_node; TYPE_1__* fq; int /*<<< orphan*/  tags; int /*<<< orphan*/  cpuhp_dead; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* exit_hctx ) (struct blk_mq_hw_ctx*,unsigned int) ;scalar_t__ (* init_hctx ) (struct blk_mq_hw_ctx*,int /*<<< orphan*/ ,unsigned int) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  flush_rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUHP_BLK_MQ_DEAD ; 
 scalar_t__ FUNC0 (struct blk_mq_tag_set*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct blk_mq_hw_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct blk_mq_hw_ctx*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct blk_mq_hw_ctx*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct request_queue *q,
		struct blk_mq_tag_set *set,
		struct blk_mq_hw_ctx *hctx, unsigned hctx_idx)
{
	hctx->queue_num = hctx_idx;

	FUNC2(CPUHP_BLK_MQ_DEAD, &hctx->cpuhp_dead);

	hctx->tags = set->tags[hctx_idx];

	if (set->ops->init_hctx &&
	    set->ops->init_hctx(hctx, set->driver_data, hctx_idx))
		goto unregister_cpu_notifier;

	if (FUNC0(set, hctx->fq->flush_rq, hctx_idx,
				hctx->numa_node))
		goto exit_hctx;
	return 0;

 exit_hctx:
	if (set->ops->exit_hctx)
		set->ops->exit_hctx(hctx, hctx_idx);
 unregister_cpu_notifier:
	FUNC1(hctx);
	return -1;
}