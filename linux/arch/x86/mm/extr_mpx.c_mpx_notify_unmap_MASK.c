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
struct vm_area_struct {unsigned long vm_start; int vm_flags; struct vm_area_struct* vm_next; } ;
struct mm_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGSEGV ; 
 int VM_MPX ; 
 TYPE_1__* current ; 
 struct vm_area_struct* FUNC0 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mm_struct*,unsigned long,unsigned long) ; 

void FUNC4(struct mm_struct *mm, unsigned long start,
		      unsigned long end)
{
	struct vm_area_struct *vma;
	int ret;

	/*
	 * Refuse to do anything unless userspace has asked
	 * the kernel to help manage the bounds tables,
	 */
	if (!FUNC2(current->mm))
		return;
	/*
	 * This will look across the entire 'start -> end' range,
	 * and find all of the non-VM_MPX VMAs.
	 *
	 * To avoid recursion, if a VM_MPX vma is found in the range
	 * (start->end), we will not continue follow-up work. This
	 * recursion represents having bounds tables for bounds tables,
	 * which should not occur normally. Being strict about it here
	 * helps ensure that we do not have an exploitable stack overflow.
	 */
	vma = FUNC0(mm, start);
	while (vma && vma->vm_start < end) {
		if (vma->vm_flags & VM_MPX)
			return;
		vma = vma->vm_next;
	}

	ret = FUNC3(mm, start, end);
	if (ret)
		FUNC1(SIGSEGV);
}