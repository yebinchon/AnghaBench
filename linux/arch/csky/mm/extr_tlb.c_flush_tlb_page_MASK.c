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
 int ASID_MASK ; 
 unsigned long TLB_ENTRY_SIZE_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 

void FUNC10(struct vm_area_struct *vma, unsigned long addr)
{
	int newpid = FUNC0(vma->vm_mm);

	addr &= TLB_ENTRY_SIZE_MASK;

#ifdef CONFIG_CPU_HAS_TLBI
	asm volatile("tlbi.vas %0"::"r"(addr | newpid));
	sync_is();
#else
	{
	int oldpid, idx;
	unsigned long flags;

	FUNC2(flags);
	oldpid = FUNC3() & ASID_MASK;
	FUNC9(addr | newpid);
	FUNC8();
	idx = FUNC4();
	if (idx >= 0)
		FUNC7();

	FUNC5(oldpid, newpid);
	FUNC1(flags);
	}
#endif
}