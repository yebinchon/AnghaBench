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
struct vm_unmapped_area_info {unsigned long length; int align_mask; unsigned long align_offset; int /*<<< orphan*/  high_limit; int /*<<< orphan*/  low_limit; int /*<<< orphan*/  flags; } ;
struct vm_area_struct {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mmap_base; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int,unsigned long const) ; 
 unsigned long EINVAL ; 
 unsigned long ENOMEM ; 
 int FUNC1 (struct file*) ; 
 unsigned long const MAP_FIXED ; 
 unsigned long const MAP_SHARED ; 
 unsigned long FUNC2 (unsigned long) ; 
 int PAGE_MASK ; 
 unsigned long const PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (struct file*,unsigned long) ; 
 int SHM_COLOUR ; 
 unsigned long const TASK_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  VM_UNMAPPED_AREA_TOPDOWN ; 
 unsigned long FUNC5 (struct file*,unsigned long const,unsigned long const,unsigned long const,unsigned long const) ; 
 TYPE_1__* current ; 
 struct vm_area_struct* FUNC6 (struct mm_struct*,unsigned long,struct vm_area_struct**) ; 
 unsigned long FUNC7 (int,unsigned long const) ; 
 unsigned long FUNC8 (struct vm_area_struct*) ; 
 unsigned long FUNC9 (struct vm_area_struct*) ; 
 unsigned long FUNC10 (struct vm_unmapped_area_info*) ; 

unsigned long
FUNC11(struct file *filp, const unsigned long addr0,
			  const unsigned long len, const unsigned long pgoff,
			  const unsigned long flags)
{
	struct vm_area_struct *vma, *prev;
	struct mm_struct *mm = current->mm;
	unsigned long addr = addr0;
	int do_color_align, last_mmap;
	struct vm_unmapped_area_info info;

	/* requested length too big for entire address space */
	if (len > TASK_SIZE)
		return -ENOMEM;

	do_color_align = 0;
	if (filp || (flags & MAP_SHARED))
		do_color_align = 1;
	last_mmap = FUNC1(filp);

	if (flags & MAP_FIXED) {
		if ((flags & MAP_SHARED) && last_mmap &&
		    (addr - FUNC7(last_mmap, pgoff))
			& (SHM_COLOUR - 1))
			return -EINVAL;
		goto found_addr;
	}

	/* requesting a specific address */
	if (addr) {
		if (do_color_align && last_mmap)
			addr = FUNC0(addr, last_mmap, pgoff);
		else
			addr = FUNC2(addr);

		vma = FUNC6(mm, addr, &prev);
		if (TASK_SIZE - len >= addr &&
		    (!vma || addr + len <= FUNC9(vma)) &&
		    (!prev || addr >= FUNC8(prev)))
			goto found_addr;
	}

	info.flags = VM_UNMAPPED_AREA_TOPDOWN;
	info.length = len;
	info.low_limit = PAGE_SIZE;
	info.high_limit = mm->mmap_base;
	info.align_mask = last_mmap ? (PAGE_MASK & (SHM_COLOUR - 1)) : 0;
	info.align_offset = FUNC7(last_mmap, pgoff);
	addr = FUNC10(&info);
	if (!(addr & ~PAGE_MASK))
		goto found_addr;
	FUNC4(addr != -ENOMEM);

	/*
	 * A failed mmap() very likely causes application failure,
	 * so fall back to the bottom-up function here. This scenario
	 * can happen with large stack limits and large mmap()
	 * allocations.
	 */
	return FUNC5(filp, addr0, len, pgoff, flags);

found_addr:
	if (do_color_align && !last_mmap && !(addr & ~PAGE_MASK))
		FUNC3(filp, addr - (pgoff << PAGE_SHIFT));

	return addr;
}