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
struct TYPE_2__ {unsigned long num; unsigned long addr; } ;

/* Variables and functions */
 unsigned long CONFIG_PHYSICAL_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned long FUNC1 (char*) ; 
 int slot_area_index ; 
 TYPE_1__* slot_areas ; 
 unsigned long slot_max ; 

__attribute__((used)) static unsigned long FUNC2(void)
{
	unsigned long slot;
	int i;

	/* Handle case of no slots stored. */
	if (slot_max == 0)
		return 0;

	slot = FUNC1("Physical") % slot_max;

	for (i = 0; i < slot_area_index; i++) {
		if (slot >= slot_areas[i].num) {
			slot -= slot_areas[i].num;
			continue;
		}
		return slot_areas[i].addr + slot * CONFIG_PHYSICAL_ALIGN;
	}

	if (i == slot_area_index)
		FUNC0("slots_fetch_random() failed!?\n");
	return 0;
}