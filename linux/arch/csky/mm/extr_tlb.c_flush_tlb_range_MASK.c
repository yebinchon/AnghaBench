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
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;

/* Variables and functions */
 unsigned long ASID_MASK ; 
 int PAGE_SIZE ; 
 int TLB_ENTRY_SIZE ; 
 unsigned long TLB_ENTRY_SIZE_MASK ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 unsigned long FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 

void FUNC10(struct vm_area_struct *vma, unsigned long start,
			unsigned long end)
{
	unsigned long newpid = FUNC0(vma->vm_mm);

	start &= TLB_ENTRY_SIZE_MASK;
	end   += TLB_ENTRY_SIZE - 1;
	end   &= TLB_ENTRY_SIZE_MASK;

#ifdef CONFIG_CPU_HAS_TLBI
	while (start < end) {
		asm volatile("tlbi.vas %0"::"r"(start | newpid));
		start += 2*PAGE_SIZE;
	}
	sync_is();
#else
	{
	unsigned long flags, oldpid;

	FUNC2(flags);
	oldpid = FUNC3() & ASID_MASK;
	while (start < end) {
		int idx;

		FUNC9(start | newpid);
		start += 2*PAGE_SIZE;
		FUNC8();
		idx = FUNC4();
		if (idx >= 0)
			FUNC7();
	}
	FUNC5(oldpid, newpid);
	FUNC1(flags);
	}
#endif
}