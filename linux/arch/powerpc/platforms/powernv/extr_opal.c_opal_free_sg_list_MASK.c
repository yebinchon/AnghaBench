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
typedef  scalar_t__ uint64_t ;
struct opal_sg_list {int /*<<< orphan*/  next; } ;

/* Variables and functions */
 struct opal_sg_list* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct opal_sg_list*) ; 

void FUNC3(struct opal_sg_list *sg)
{
	while (sg) {
		uint64_t next = FUNC1(sg->next);

		FUNC2(sg);

		if (next)
			sg = FUNC0(next);
		else
			sg = NULL;
	}
}