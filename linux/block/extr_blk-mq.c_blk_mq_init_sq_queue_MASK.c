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
struct request_queue {int dummy; } ;
struct blk_mq_tag_set {int nr_hw_queues; int nr_maps; unsigned int queue_depth; unsigned int flags; int /*<<< orphan*/  numa_node; struct blk_mq_ops const* ops; } ;
struct blk_mq_ops {int dummy; } ;

/* Variables and functions */
 struct request_queue* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int FUNC2 (struct blk_mq_tag_set*) ; 
 int /*<<< orphan*/  FUNC3 (struct blk_mq_tag_set*) ; 
 struct request_queue* FUNC4 (struct blk_mq_tag_set*) ; 
 int /*<<< orphan*/  FUNC5 (struct blk_mq_tag_set*,int /*<<< orphan*/ ,int) ; 

struct request_queue *FUNC6(struct blk_mq_tag_set *set,
					   const struct blk_mq_ops *ops,
					   unsigned int queue_depth,
					   unsigned int set_flags)
{
	struct request_queue *q;
	int ret;

	FUNC5(set, 0, sizeof(*set));
	set->ops = ops;
	set->nr_hw_queues = 1;
	set->nr_maps = 1;
	set->queue_depth = queue_depth;
	set->numa_node = NUMA_NO_NODE;
	set->flags = set_flags;

	ret = FUNC2(set);
	if (ret)
		return FUNC0(ret);

	q = FUNC4(set);
	if (FUNC1(q)) {
		FUNC3(set);
		return q;
	}

	return q;
}