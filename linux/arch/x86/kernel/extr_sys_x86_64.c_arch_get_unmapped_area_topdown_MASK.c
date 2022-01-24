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
struct vm_unmapped_area_info {unsigned long length; unsigned long align_offset; scalar_t__ align_mask; int /*<<< orphan*/  high_limit; int /*<<< orphan*/  low_limit; int /*<<< orphan*/  flags; } ;
struct vm_area_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 unsigned long DEFAULT_MAP_WINDOW ; 
 unsigned long ENOMEM ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 unsigned long const MAP_32BIT ; 
 unsigned long const MAP_FIXED ; 
 unsigned long PAGE_MASK ; 
 unsigned long const PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 unsigned long const TASK_SIZE ; 
 unsigned long TASK_SIZE_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  VM_UNMAPPED_AREA_TOPDOWN ; 
 unsigned long FUNC2 (struct file*,unsigned long const,unsigned long const,unsigned long const,unsigned long const) ; 
 TYPE_1__* current ; 
 struct vm_area_struct* FUNC3 (struct mm_struct*,unsigned long) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,unsigned long const) ; 
 unsigned long FUNC9 (unsigned long,unsigned long const,unsigned long const) ; 
 unsigned long FUNC10 (struct vm_area_struct*) ; 
 unsigned long FUNC11 (struct vm_unmapped_area_info*) ; 

unsigned long
FUNC12(struct file *filp, const unsigned long addr0,
			  const unsigned long len, const unsigned long pgoff,
			  const unsigned long flags)
{
	struct vm_area_struct *vma;
	struct mm_struct *mm = current->mm;
	unsigned long addr = addr0;
	struct vm_unmapped_area_info info;

	addr = FUNC9(addr, len, flags);
	if (FUNC0(addr))
		return addr;

	/* requested length too big for entire address space */
	if (len > TASK_SIZE)
		return -ENOMEM;

	/* No address checking. See comment at mmap_address_hint_valid() */
	if (flags & MAP_FIXED)
		return addr;

	/* for MAP_32BIT mappings we force the legacy mmap base */
	if (!FUNC7() && (flags & MAP_32BIT))
		goto bottomup;

	/* requesting a specific address */
	if (addr) {
		addr &= PAGE_MASK;
		if (!FUNC8(addr, len))
			goto get_unmapped_area;

		vma = FUNC3(mm, addr);
		if (!vma || addr + len <= FUNC10(vma))
			return addr;
	}
get_unmapped_area:

	info.flags = VM_UNMAPPED_AREA_TOPDOWN;
	info.length = len;
	info.low_limit = PAGE_SIZE;
	info.high_limit = FUNC6(0);

	/*
	 * If hint address is above DEFAULT_MAP_WINDOW, look for unmapped area
	 * in the full address space.
	 *
	 * !in_32bit_syscall() check to avoid high addresses for x32
	 * (and make it no op on native i386).
	 */
	if (addr > DEFAULT_MAP_WINDOW && !FUNC7())
		info.high_limit += TASK_SIZE_MAX - DEFAULT_MAP_WINDOW;

	info.align_mask = 0;
	info.align_offset = pgoff << PAGE_SHIFT;
	if (filp) {
		info.align_mask = FUNC5();
		info.align_offset += FUNC4();
	}
	addr = FUNC11(&info);
	if (!(addr & ~PAGE_MASK))
		return addr;
	FUNC1(addr != -ENOMEM);

bottomup:
	/*
	 * A failed mmap() very likely causes application failure,
	 * so fall back to the bottom-up function here. This scenario
	 * can happen with large stack limits and large mmap()
	 * allocations.
	 */
	return FUNC2(filp, addr0, len, pgoff, flags);
}