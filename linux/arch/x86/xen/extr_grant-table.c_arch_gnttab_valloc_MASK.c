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
struct gnttab_vm_area {int /*<<< orphan*/ * ptes; int /*<<< orphan*/ * area; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gnttab_vm_area *area, unsigned nr_frames)
{
	area->ptes = FUNC2(nr_frames, sizeof(*area->ptes), GFP_KERNEL);
	if (area->ptes == NULL)
		return -ENOMEM;

	area->area = FUNC0(PAGE_SIZE * nr_frames, area->ptes);
	if (area->area == NULL) {
		FUNC1(area->ptes);
		return -ENOMEM;
	}

	return 0;
}