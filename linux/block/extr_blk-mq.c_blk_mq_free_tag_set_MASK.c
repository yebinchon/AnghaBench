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
struct blk_mq_tag_set {int nr_maps; int /*<<< orphan*/ * tags; TYPE_1__* map; } ;
struct TYPE_2__ {int /*<<< orphan*/ * mq_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct blk_mq_tag_set*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct blk_mq_tag_set*) ; 

void FUNC3(struct blk_mq_tag_set *set)
{
	int i, j;

	for (i = 0; i < FUNC2(set); i++)
		FUNC0(set, i);

	for (j = 0; j < set->nr_maps; j++) {
		FUNC1(set->map[j].mq_map);
		set->map[j].mq_map = NULL;
	}

	FUNC1(set->tags);
	set->tags = NULL;
}