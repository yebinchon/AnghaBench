#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef  TYPE_1__ levelitem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 TYPE_1__* freelevelitems ; 
 TYPE_1__* levelitemheap ; 

void FUNC3(void)
{
	int i, max_levelitems;

	if (levelitemheap) FUNC0(levelitemheap);

	max_levelitems = (int) FUNC2("max_levelitems", "256");
	levelitemheap = (levelitem_t *) FUNC1(max_levelitems * sizeof(levelitem_t));

	for (i = 0; i < max_levelitems-1; i++)
	{
		levelitemheap[i].next = &levelitemheap[i + 1];
	} //end for
	levelitemheap[max_levelitems-1].next = NULL;
	//
	freelevelitems = levelitemheap;
}