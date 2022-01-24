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
struct blk_mq_tags {unsigned int nr_tags; unsigned int nr_reserved_tags; int /*<<< orphan*/  bitmap_tags; int /*<<< orphan*/  breserved_tags; } ;

/* Variables and functions */
 int BLK_TAG_ALLOC_RR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct blk_mq_tags*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct blk_mq_tags *FUNC3(struct blk_mq_tags *tags,
						   int node, int alloc_policy)
{
	unsigned int depth = tags->nr_tags - tags->nr_reserved_tags;
	bool round_robin = alloc_policy == BLK_TAG_ALLOC_RR;

	if (FUNC0(&tags->bitmap_tags, depth, round_robin, node))
		goto free_tags;
	if (FUNC0(&tags->breserved_tags, tags->nr_reserved_tags, round_robin,
		     node))
		goto free_bitmap_tags;

	return tags;
free_bitmap_tags:
	FUNC2(&tags->bitmap_tags);
free_tags:
	FUNC1(tags);
	return NULL;
}