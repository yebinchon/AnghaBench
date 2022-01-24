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
 int MMU_NTLB_ENTRIES ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 unsigned long FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 () ; 
 int /*<<< orphan*/  init_mm ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 unsigned int FUNC7 () ; 

void FUNC8(unsigned long start, unsigned long end)
{
	unsigned int cpu = FUNC7();
	unsigned long flags;
	int size;

	FUNC5(flags);
	size = (end - start + (PAGE_SIZE - 1)) >> PAGE_SHIFT;
	if (size > (MMU_NTLB_ENTRIES/4)) { /* Too many TLB to flush */
		FUNC2();
	} else {
		unsigned long asid;
		unsigned long saved_asid = FUNC1();

		asid = FUNC0(cpu, &init_mm);
		start &= PAGE_MASK;
		end += (PAGE_SIZE - 1);
		end &= PAGE_MASK;
		FUNC6(asid);
		while (start < end) {
			FUNC3(asid, start);
			start += PAGE_SIZE;
		}
		FUNC6(saved_asid);
	}
	FUNC4(flags);
}