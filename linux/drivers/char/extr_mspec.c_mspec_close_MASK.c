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
struct vma_data {int vm_end; int vm_start; unsigned long* maddr; int /*<<< orphan*/  refcnt; } ;
struct vm_area_struct {struct vma_data* vm_private_data; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct vma_data*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int) ; 

__attribute__((used)) static void
FUNC4(struct vm_area_struct *vma)
{
	struct vma_data *vdata;
	int index, last_index;
	unsigned long my_page;

	vdata = vma->vm_private_data;

	if (!FUNC2(&vdata->refcnt))
		return;

	last_index = (vdata->vm_end - vdata->vm_start) >> PAGE_SHIFT;
	for (index = 0; index < last_index; index++) {
		if (vdata->maddr[index] == 0)
			continue;
		/*
		 * Clear the page before sticking it back
		 * into the pool.
		 */
		my_page = vdata->maddr[index];
		vdata->maddr[index] = 0;
		FUNC1((char *)my_page, 0, PAGE_SIZE);
		FUNC3(my_page, 1);
	}

	FUNC0(vdata);
}