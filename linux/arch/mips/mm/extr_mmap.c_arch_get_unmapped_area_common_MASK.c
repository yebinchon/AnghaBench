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
struct vm_unmapped_area_info {unsigned long length; unsigned long align_mask; unsigned long align_offset; unsigned long low_limit; unsigned long high_limit; scalar_t__ flags; } ;
struct vm_area_struct {int dummy; } ;
struct mm_struct {unsigned long mmap_base; } ;
struct file {int dummy; } ;
typedef  enum mmap_allocation_direction { ____Placeholder_mmap_allocation_direction } mmap_allocation_direction ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 int DOWN ; 
 unsigned long EINVAL ; 
 unsigned long ENOMEM ; 
 unsigned long MAP_FIXED ; 
 unsigned long MAP_SHARED ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 unsigned long TASK_SIZE ; 
 scalar_t__ VM_UNMAPPED_AREA_TOPDOWN ; 
 TYPE_1__* current ; 
 struct vm_area_struct* FUNC2 (struct mm_struct*,unsigned long) ; 
 unsigned long shm_align_mask ; 
 scalar_t__ FUNC3 (int) ; 
 unsigned long FUNC4 (struct vm_area_struct*) ; 
 unsigned long FUNC5 (struct vm_unmapped_area_info*) ; 

__attribute__((used)) static unsigned long FUNC6(struct file *filp,
	unsigned long addr0, unsigned long len, unsigned long pgoff,
	unsigned long flags, enum mmap_allocation_direction dir)
{
	struct mm_struct *mm = current->mm;
	struct vm_area_struct *vma;
	unsigned long addr = addr0;
	int do_color_align;
	struct vm_unmapped_area_info info;

	if (FUNC3(len > TASK_SIZE))
		return -ENOMEM;

	if (flags & MAP_FIXED) {
		/* Even MAP_FIXED mappings must reside within TASK_SIZE */
		if (TASK_SIZE - len < addr)
			return -EINVAL;

		/*
		 * We do not accept a shared mapping if it would violate
		 * cache aliasing constraints.
		 */
		if ((flags & MAP_SHARED) &&
		    ((addr - (pgoff << PAGE_SHIFT)) & shm_align_mask))
			return -EINVAL;
		return addr;
	}

	do_color_align = 0;
	if (filp || (flags & MAP_SHARED))
		do_color_align = 1;

	/* requesting a specific address */
	if (addr) {
		if (do_color_align)
			addr = FUNC0(addr, pgoff);
		else
			addr = FUNC1(addr);

		vma = FUNC2(mm, addr);
		if (TASK_SIZE - len >= addr &&
		    (!vma || addr + len <= FUNC4(vma)))
			return addr;
	}

	info.length = len;
	info.align_mask = do_color_align ? (PAGE_MASK & shm_align_mask) : 0;
	info.align_offset = pgoff << PAGE_SHIFT;

	if (dir == DOWN) {
		info.flags = VM_UNMAPPED_AREA_TOPDOWN;
		info.low_limit = PAGE_SIZE;
		info.high_limit = mm->mmap_base;
		addr = FUNC5(&info);

		if (!(addr & ~PAGE_MASK))
			return addr;

		/*
		 * A failed mmap() very likely causes application failure,
		 * so fall back to the bottom-up function here. This scenario
		 * can happen with large stack limits and large mmap()
		 * allocations.
		 */
	}

	info.flags = 0;
	info.low_limit = mm->mmap_base;
	info.high_limit = TASK_SIZE;
	return FUNC5(&info);
}