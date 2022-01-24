#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef  TYPE_1__ memhunk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* memhunk_high ; 
 int memhunk_high_size ; 

void FUNC1(void)
{
	memhunk_t *h, *nexth;

	for (h = memhunk_high; h; h = nexth)
	{
		nexth = h->next;
		FUNC0(h);
	} //end for
	memhunk_high = NULL;
	memhunk_high_size = 16 * 1024 * 1024;
}