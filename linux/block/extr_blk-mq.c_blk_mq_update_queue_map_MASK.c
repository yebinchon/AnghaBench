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
struct blk_mq_tag_set {int nr_maps; int /*<<< orphan*/ * map; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* map_queues ) (struct blk_mq_tag_set*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t HCTX_TYPE_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct blk_mq_tag_set*) ; 

__attribute__((used)) static int FUNC5(struct blk_mq_tag_set *set)
{
	if (set->ops->map_queues && !FUNC3()) {
		int i;

		/*
		 * transport .map_queues is usually done in the following
		 * way:
		 *
		 * for (queue = 0; queue < set->nr_hw_queues; queue++) {
		 * 	mask = get_cpu_mask(queue)
		 * 	for_each_cpu(cpu, mask)
		 * 		set->map[x].mq_map[cpu] = queue;
		 * }
		 *
		 * When we need to remap, the table has to be cleared for
		 * killing stale mapping since one CPU may not be mapped
		 * to any hw queue.
		 */
		for (i = 0; i < set->nr_maps; i++)
			FUNC1(&set->map[i]);

		return set->ops->map_queues(set);
	} else {
		FUNC0(set->nr_maps > 1);
		return FUNC2(&set->map[HCTX_TYPE_DEFAULT]);
	}
}