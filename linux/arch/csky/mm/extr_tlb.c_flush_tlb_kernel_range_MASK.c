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
 unsigned long ASID_MASK ; 
 int PAGE_SIZE ; 
 int TLB_ENTRY_SIZE ; 
 unsigned long TLB_ENTRY_SIZE_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 

void FUNC9(unsigned long start, unsigned long end)
{
	start &= TLB_ENTRY_SIZE_MASK;
	end   += TLB_ENTRY_SIZE - 1;
	end   &= TLB_ENTRY_SIZE_MASK;

#ifdef CONFIG_CPU_HAS_TLBI
	while (start < end) {
		asm volatile("tlbi.vaas %0"::"r"(start));
		start += 2*PAGE_SIZE;
	}
	sync_is();
#else
	{
	unsigned long flags, oldpid;

	FUNC1(flags);
	oldpid = FUNC2() & ASID_MASK;
	while (start < end) {
		int idx;

		FUNC8(start | oldpid);
		start += 2*PAGE_SIZE;
		FUNC7();
		idx = FUNC3();
		if (idx >= 0)
			FUNC6();
	}
	FUNC4(oldpid, oldpid);
	FUNC0(flags);
	}
#endif
}