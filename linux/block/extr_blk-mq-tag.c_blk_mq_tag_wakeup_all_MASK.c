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
struct blk_mq_tags {int /*<<< orphan*/  breserved_tags; int /*<<< orphan*/  bitmap_tags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct blk_mq_tags *tags, bool include_reserve)
{
	FUNC0(&tags->bitmap_tags);
	if (include_reserve)
		FUNC0(&tags->breserved_tags);
}