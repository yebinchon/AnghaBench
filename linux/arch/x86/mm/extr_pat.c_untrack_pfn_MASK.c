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
struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_end; } ;
typedef  int resource_size_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int VM_PAT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ,unsigned long*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned long) ; 

void FUNC3(struct vm_area_struct *vma, unsigned long pfn,
		 unsigned long size)
{
	resource_size_t paddr;
	unsigned long prot;

	if (vma && !(vma->vm_flags & VM_PAT))
		return;

	/* free the chunk starting from pfn or the whole chunk */
	paddr = (resource_size_t)pfn << PAGE_SHIFT;
	if (!paddr && !size) {
		if (FUNC1(vma, vma->vm_start, 0, &prot, &paddr)) {
			FUNC0(1);
			return;
		}

		size = vma->vm_end - vma->vm_start;
	}
	FUNC2(paddr, size);
	if (vma)
		vma->vm_flags &= ~VM_PAT;
}