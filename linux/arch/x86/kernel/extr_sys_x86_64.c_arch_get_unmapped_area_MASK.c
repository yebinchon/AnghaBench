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
struct vm_unmapped_area_info {unsigned long length; unsigned long low_limit; unsigned long high_limit; unsigned long align_offset; scalar_t__ align_mask; scalar_t__ flags; } ;
struct vm_area_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 unsigned long ENOMEM ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 unsigned long MAP_FIXED ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long PAGE_SHIFT ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long,unsigned long*,unsigned long*) ; 
 struct vm_area_struct* FUNC3 (struct mm_struct*,unsigned long) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 unsigned long FUNC6 (unsigned long,unsigned long,unsigned long) ; 
 unsigned long FUNC7 (struct vm_area_struct*) ; 
 unsigned long FUNC8 (struct vm_unmapped_area_info*) ; 

unsigned long
FUNC9(struct file *filp, unsigned long addr,
		unsigned long len, unsigned long pgoff, unsigned long flags)
{
	struct mm_struct *mm = current->mm;
	struct vm_area_struct *vma;
	struct vm_unmapped_area_info info;
	unsigned long begin, end;

	addr = FUNC6(addr, len, flags);
	if (FUNC0(addr))
		return addr;

	if (flags & MAP_FIXED)
		return addr;

	FUNC2(addr, flags, &begin, &end);

	if (len > end)
		return -ENOMEM;

	if (addr) {
		addr = FUNC1(addr);
		vma = FUNC3(mm, addr);
		if (end - len >= addr &&
		    (!vma || addr + len <= FUNC7(vma)))
			return addr;
	}

	info.flags = 0;
	info.length = len;
	info.low_limit = begin;
	info.high_limit = end;
	info.align_mask = 0;
	info.align_offset = pgoff << PAGE_SHIFT;
	if (filp) {
		info.align_mask = FUNC5();
		info.align_offset += FUNC4();
	}
	return FUNC8(&info);
}