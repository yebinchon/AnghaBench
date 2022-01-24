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
struct request_queue {TYPE_1__* elevator; } ;
struct elevator_type {int /*<<< orphan*/  hctx_debugfs_attrs; } ;
struct blk_mq_hw_ctx {int /*<<< orphan*/  sched_debugfs_dir; int /*<<< orphan*/  debugfs_dir; } ;
struct TYPE_2__ {struct elevator_type* type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct blk_mq_hw_ctx*,int /*<<< orphan*/ ) ; 

void FUNC2(struct request_queue *q,
					struct blk_mq_hw_ctx *hctx)
{
	struct elevator_type *e = q->elevator->type;

	if (!e->hctx_debugfs_attrs)
		return;

	hctx->sched_debugfs_dir = FUNC0("sched",
						     hctx->debugfs_dir);
	FUNC1(hctx->sched_debugfs_dir, hctx,
			     e->hctx_debugfs_attrs);
}