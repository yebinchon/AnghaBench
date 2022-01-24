#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef  TYPE_1__ bspbrush_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

bspbrush_t *FUNC1(bspbrush_t *list, bspbrush_t *skip1)
{
	bspbrush_t	*newlist;
	bspbrush_t	*next;

	newlist = NULL;

	for ( ; list ; list = next)
	{
		next = list->next;
		if (list == skip1)
		{
			FUNC0 (list);
			continue;
		}
		list->next = newlist;
		newlist = list;
	}
	return newlist;
}