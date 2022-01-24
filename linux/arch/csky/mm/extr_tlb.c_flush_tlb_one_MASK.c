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

/* Variables and functions */
 int ASID_MASK ; 
 unsigned long TLB_ENTRY_SIZE_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 

void FUNC9(unsigned long addr)
{
	addr &= TLB_ENTRY_SIZE_MASK;

#ifdef CONFIG_CPU_HAS_TLBI
	asm volatile("tlbi.vaas %0"::"r"(addr));
	sync_is();
#else
	{
	int oldpid, idx;
	unsigned long flags;

	FUNC1(flags);
	oldpid = FUNC2() & ASID_MASK;
	FUNC8(addr | oldpid);
	FUNC7();
	idx = FUNC3();
	if (idx >= 0)
		FUNC6();

	FUNC4(oldpid, oldpid);
	FUNC0(flags);
	}
#endif
}