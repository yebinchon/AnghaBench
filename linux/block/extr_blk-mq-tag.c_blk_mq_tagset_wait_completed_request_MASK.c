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
struct blk_mq_tag_set {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct blk_mq_tag_set*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  blk_mq_tagset_count_completed_rqs ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(struct blk_mq_tag_set *tagset)
{
	while (true) {
		unsigned count = 0;

		FUNC0(tagset,
				blk_mq_tagset_count_completed_rqs, &count);
		if (!count)
			break;
		FUNC1(5);
	}
}