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
struct mm_struct {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 unsigned long EINVAL ; 
 unsigned long ENOMEM ; 
 unsigned long MAP_FIXED ; 
 unsigned long MAP_SHARED ; 
 unsigned long FUNC1 (unsigned long) ; 
 int PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int SHMLBA ; 
 unsigned long STACK_TOP32 ; 
 unsigned long TASK_SIZE ; 
 unsigned long TASK_UNMAPPED_BASE ; 
 int /*<<< orphan*/  TIF_32BIT ; 
 unsigned long VA_EXCLUDE_END ; 
 unsigned long VA_EXCLUDE_START ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* current ; 
 struct vm_area_struct* FUNC3 (struct mm_struct*,unsigned long) ; 
 unsigned long FUNC4 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 unsigned long FUNC7 (struct vm_area_struct*) ; 
 unsigned long FUNC8 (struct vm_unmapped_area_info*) ; 

unsigned long FUNC9(struct file *filp, unsigned long addr, unsigned long len, unsigned long pgoff, unsigned long flags)
{
	struct mm_struct *mm = current->mm;
	struct vm_area_struct * vma;
	unsigned long task_size = TASK_SIZE;
	int do_color_align;
	struct vm_unmapped_area_info info;

	if (flags & MAP_FIXED) {
		/* We do not accept a shared mapping if it would violate
		 * cache aliasing constraints.
		 */
		if ((flags & MAP_SHARED) &&
		    ((addr - (pgoff << PAGE_SHIFT)) & (SHMLBA - 1)))
			return -EINVAL;
		return addr;
	}

	if (FUNC5(TIF_32BIT))
		task_size = STACK_TOP32;
	if (FUNC6(len > task_size || len >= VA_EXCLUDE_START))
		return -ENOMEM;

	do_color_align = 0;
	if (filp || (flags & MAP_SHARED))
		do_color_align = 1;

	if (addr) {
		if (do_color_align)
			addr = FUNC0(addr, pgoff);
		else
			addr = FUNC1(addr);

		vma = FUNC3(mm, addr);
		if (task_size - len >= addr &&
		    (!vma || addr + len <= FUNC7(vma)))
			return addr;
	}

	info.flags = 0;
	info.length = len;
	info.low_limit = TASK_UNMAPPED_BASE;
	info.high_limit = FUNC4(task_size, VA_EXCLUDE_START);
	info.align_mask = do_color_align ? (PAGE_MASK & (SHMLBA - 1)) : 0;
	info.align_offset = pgoff << PAGE_SHIFT;
	addr = FUNC8(&info);

	if ((addr & ~PAGE_MASK) && task_size > VA_EXCLUDE_END) {
		FUNC2(addr != -ENOMEM);
		info.low_limit = VA_EXCLUDE_END;
		info.high_limit = task_size;
		addr = FUNC8(&info);
	}

	return addr;
}