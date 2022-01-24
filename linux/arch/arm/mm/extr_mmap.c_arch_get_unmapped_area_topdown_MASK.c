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
struct vm_unmapped_area_info {unsigned long length; unsigned long low_limit; unsigned long high_limit; int align_mask; unsigned long align_offset; scalar_t__ flags; } ;
struct vm_area_struct {int dummy; } ;
struct mm_struct {unsigned long mmap_base; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,unsigned long const) ; 
 unsigned long EINVAL ; 
 unsigned long ENOMEM ; 
 unsigned long FIRST_USER_ADDRESS ; 
 unsigned long const MAP_FIXED ; 
 unsigned long const MAP_SHARED ; 
 unsigned long FUNC1 (unsigned long) ; 
 int PAGE_MASK ; 
 unsigned long const PAGE_SHIFT ; 
 int SHMLBA ; 
 unsigned long const TASK_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ VM_UNMAPPED_AREA_TOPDOWN ; 
 int FUNC3 () ; 
 TYPE_1__* current ; 
 struct vm_area_struct* FUNC4 (struct mm_struct*,unsigned long) ; 
 unsigned long FUNC5 (struct vm_area_struct*) ; 
 unsigned long FUNC6 (struct vm_unmapped_area_info*) ; 

unsigned long
FUNC7(struct file *filp, const unsigned long addr0,
			const unsigned long len, const unsigned long pgoff,
			const unsigned long flags)
{
	struct vm_area_struct *vma;
	struct mm_struct *mm = current->mm;
	unsigned long addr = addr0;
	int do_align = 0;
	int aliasing = FUNC3();
	struct vm_unmapped_area_info info;

	/*
	 * We only need to do colour alignment if either the I or D
	 * caches alias.
	 */
	if (aliasing)
		do_align = filp || (flags & MAP_SHARED);

	/* requested length too big for entire address space */
	if (len > TASK_SIZE)
		return -ENOMEM;

	if (flags & MAP_FIXED) {
		if (aliasing && flags & MAP_SHARED &&
		    (addr - (pgoff << PAGE_SHIFT)) & (SHMLBA - 1))
			return -EINVAL;
		return addr;
	}

	/* requesting a specific address */
	if (addr) {
		if (do_align)
			addr = FUNC0(addr, pgoff);
		else
			addr = FUNC1(addr);
		vma = FUNC4(mm, addr);
		if (TASK_SIZE - len >= addr &&
				(!vma || addr + len <= FUNC5(vma)))
			return addr;
	}

	info.flags = VM_UNMAPPED_AREA_TOPDOWN;
	info.length = len;
	info.low_limit = FIRST_USER_ADDRESS;
	info.high_limit = mm->mmap_base;
	info.align_mask = do_align ? (PAGE_MASK & (SHMLBA - 1)) : 0;
	info.align_offset = pgoff << PAGE_SHIFT;
	addr = FUNC6(&info);

	/*
	 * A failed mmap() very likely causes application failure,
	 * so fall back to the bottom-up function here. This scenario
	 * can happen with large stack limits and large mmap()
	 * allocations.
	 */
	if (addr & ~PAGE_MASK) {
		FUNC2(addr != -ENOMEM);
		info.flags = 0;
		info.low_limit = mm->mmap_base;
		info.high_limit = TASK_SIZE;
		addr = FUNC6(&info);
	}

	return addr;
}