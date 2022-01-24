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
struct vm_unmapped_area_info {unsigned long length; int align_mask; unsigned long align_offset; void* high_limit; int /*<<< orphan*/  low_limit; scalar_t__ flags; } ;
struct vm_area_struct {int dummy; } ;
struct mm_struct {void* mmap_base; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (unsigned long,unsigned long const) ; 
 unsigned long EINVAL ; 
 unsigned long ENOMEM ; 
 unsigned long const MAP_FIXED ; 
 unsigned long const MAP_SHARED ; 
 unsigned long FUNC2 (unsigned long) ; 
 int PAGE_MASK ; 
 unsigned long const PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int SHMLBA ; 
 void* STACK_TOP32 ; 
 int /*<<< orphan*/  TASK_UNMAPPED_BASE ; 
 int /*<<< orphan*/  TIF_32BIT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ VM_UNMAPPED_AREA_TOPDOWN ; 
 TYPE_1__* current ; 
 struct vm_area_struct* FUNC4 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 unsigned long FUNC7 (struct vm_area_struct*) ; 
 unsigned long FUNC8 (struct vm_unmapped_area_info*) ; 

unsigned long
FUNC9(struct file *filp, const unsigned long addr0,
			  const unsigned long len, const unsigned long pgoff,
			  const unsigned long flags)
{
	struct vm_area_struct *vma;
	struct mm_struct *mm = current->mm;
	unsigned long task_size = STACK_TOP32;
	unsigned long addr = addr0;
	int do_color_align;
	struct vm_unmapped_area_info info;

	/* This should only ever run for 32-bit processes.  */
	FUNC0(!FUNC5(TIF_32BIT));

	if (flags & MAP_FIXED) {
		/* We do not accept a shared mapping if it would violate
		 * cache aliasing constraints.
		 */
		if ((flags & MAP_SHARED) &&
		    ((addr - (pgoff << PAGE_SHIFT)) & (SHMLBA - 1)))
			return -EINVAL;
		return addr;
	}

	if (FUNC6(len > task_size))
		return -ENOMEM;

	do_color_align = 0;
	if (filp || (flags & MAP_SHARED))
		do_color_align = 1;

	/* requesting a specific address */
	if (addr) {
		if (do_color_align)
			addr = FUNC1(addr, pgoff);
		else
			addr = FUNC2(addr);

		vma = FUNC4(mm, addr);
		if (task_size - len >= addr &&
		    (!vma || addr + len <= FUNC7(vma)))
			return addr;
	}

	info.flags = VM_UNMAPPED_AREA_TOPDOWN;
	info.length = len;
	info.low_limit = PAGE_SIZE;
	info.high_limit = mm->mmap_base;
	info.align_mask = do_color_align ? (PAGE_MASK & (SHMLBA - 1)) : 0;
	info.align_offset = pgoff << PAGE_SHIFT;
	addr = FUNC8(&info);

	/*
	 * A failed mmap() very likely causes application failure,
	 * so fall back to the bottom-up function here. This scenario
	 * can happen with large stack limits and large mmap()
	 * allocations.
	 */
	if (addr & ~PAGE_MASK) {
		FUNC3(addr != -ENOMEM);
		info.flags = 0;
		info.low_limit = TASK_UNMAPPED_BASE;
		info.high_limit = STACK_TOP32;
		addr = FUNC8(&info);
	}

	return addr;
}