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
struct seq_file {int dummy; } ;
struct request_queue {int /*<<< orphan*/  sysfs_lock; } ;
struct blk_mq_hw_ctx {scalar_t__ sched_tags; struct request_queue* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(void *data, struct seq_file *m)
{
	struct blk_mq_hw_ctx *hctx = data;
	struct request_queue *q = hctx->queue;
	int res;

	res = FUNC1(&q->sysfs_lock);
	if (res)
		goto out;
	if (hctx->sched_tags)
		FUNC0(m, hctx->sched_tags);
	FUNC2(&q->sysfs_lock);

out:
	return res;
}