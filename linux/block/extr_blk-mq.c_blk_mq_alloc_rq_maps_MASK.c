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
struct blk_mq_tag_set {unsigned int queue_depth; int reserved_tags; } ;

/* Variables and functions */
 int BLK_MQ_TAG_MIN ; 
 int ENOMEM ; 
 int FUNC0 (struct blk_mq_tag_set*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct blk_mq_tag_set *set)
{
	unsigned int depth;
	int err;

	depth = set->queue_depth;
	do {
		err = FUNC0(set);
		if (!err)
			break;

		set->queue_depth >>= 1;
		if (set->queue_depth < set->reserved_tags + BLK_MQ_TAG_MIN) {
			err = -ENOMEM;
			break;
		}
	} while (set->queue_depth);

	if (!set->queue_depth || err) {
		FUNC1("blk-mq: failed to allocate request map\n");
		return -ENOMEM;
	}

	if (depth != set->queue_depth)
		FUNC2("blk-mq: reduced tag depth (%u -> %u)\n",
						depth, set->queue_depth);

	return 0;
}