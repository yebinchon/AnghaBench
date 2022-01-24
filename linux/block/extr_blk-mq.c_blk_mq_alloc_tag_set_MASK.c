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
struct blk_mq_tags {int dummy; } ;
struct blk_mq_tag_set {int nr_hw_queues; int queue_depth; int reserved_tags; int nr_maps; int /*<<< orphan*/ * tags; TYPE_2__* map; int /*<<< orphan*/  tag_list; int /*<<< orphan*/  tag_list_lock; int /*<<< orphan*/  numa_node; TYPE_1__* ops; } ;
struct TYPE_4__ {int nr_queues; int /*<<< orphan*/ * mq_map; } ;
struct TYPE_3__ {int /*<<< orphan*/  put_budget; int /*<<< orphan*/  get_budget; int /*<<< orphan*/  queue_rq; } ;

/* Variables and functions */
 int BLK_MQ_MAX_DEPTH ; 
 int BLK_MQ_TAG_MIN ; 
 int BLK_MQ_UNIQUE_TAG_BITS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HCTX_MAX_TYPES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct blk_mq_tag_set*) ; 
 int FUNC3 (struct blk_mq_tag_set*) ; 
 scalar_t__ FUNC4 () ; 
 void* FUNC5 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int nr_cpu_ids ; 
 int FUNC9 (struct blk_mq_tag_set*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 

int FUNC11(struct blk_mq_tag_set *set)
{
	int i, ret;

	FUNC0(BLK_MQ_MAX_DEPTH > 1 << BLK_MQ_UNIQUE_TAG_BITS);

	if (!set->nr_hw_queues)
		return -EINVAL;
	if (!set->queue_depth)
		return -EINVAL;
	if (set->queue_depth < set->reserved_tags + BLK_MQ_TAG_MIN)
		return -EINVAL;

	if (!set->ops->queue_rq)
		return -EINVAL;

	if (!set->ops->get_budget ^ !set->ops->put_budget)
		return -EINVAL;

	if (set->queue_depth > BLK_MQ_MAX_DEPTH) {
		FUNC10("blk-mq: reduced tag depth to %u\n",
			BLK_MQ_MAX_DEPTH);
		set->queue_depth = BLK_MQ_MAX_DEPTH;
	}

	if (!set->nr_maps)
		set->nr_maps = 1;
	else if (set->nr_maps > HCTX_MAX_TYPES)
		return -EINVAL;

	/*
	 * If a crashdump is active, then we are potentially in a very
	 * memory constrained environment. Limit us to 1 queue and
	 * 64 tags to prevent using too much memory.
	 */
	if (FUNC4()) {
		set->nr_hw_queues = 1;
		set->nr_maps = 1;
		set->queue_depth = FUNC7(64U, set->queue_depth);
	}
	/*
	 * There is no use for more h/w queues than cpus if we just have
	 * a single map
	 */
	if (set->nr_maps == 1 && set->nr_hw_queues > nr_cpu_ids)
		set->nr_hw_queues = nr_cpu_ids;

	set->tags = FUNC5(FUNC9(set), sizeof(struct blk_mq_tags *),
				 GFP_KERNEL, set->numa_node);
	if (!set->tags)
		return -ENOMEM;

	ret = -ENOMEM;
	for (i = 0; i < set->nr_maps; i++) {
		set->map[i].mq_map = FUNC5(nr_cpu_ids,
						  sizeof(set->map[i].mq_map[0]),
						  GFP_KERNEL, set->numa_node);
		if (!set->map[i].mq_map)
			goto out_free_mq_map;
		set->map[i].nr_queues = FUNC4() ? 1 : set->nr_hw_queues;
	}

	ret = FUNC3(set);
	if (ret)
		goto out_free_mq_map;

	ret = FUNC2(set);
	if (ret)
		goto out_free_mq_map;

	FUNC8(&set->tag_list_lock);
	FUNC1(&set->tag_list);

	return 0;

out_free_mq_map:
	for (i = 0; i < set->nr_maps; i++) {
		FUNC6(set->map[i].mq_map);
		set->map[i].mq_map = NULL;
	}
	FUNC6(set->tags);
	set->tags = NULL;
	return ret;
}