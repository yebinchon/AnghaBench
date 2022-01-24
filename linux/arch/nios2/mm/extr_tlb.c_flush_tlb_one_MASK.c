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
struct TYPE_2__ {unsigned int tlb_num_ways; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_PTEADDR ; 
 int /*<<< orphan*/  CTL_TLBACC ; 
 int /*<<< orphan*/  CTL_TLBMISC ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long TLBMISC_PID_SHIFT ; 
 unsigned int TLBMISC_RD ; 
 unsigned int TLBMISC_WAY_SHIFT ; 
 unsigned int TLBMISC_WE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 TYPE_1__ cpuinfo ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,...) ; 
 unsigned long FUNC4 (unsigned long) ; 

__attribute__((used)) static void FUNC5(unsigned long addr)
{
	unsigned int way;
	unsigned long org_misc, pid_misc;

	FUNC3("Flush tlb-entry for vaddr=%#lx\n", addr);

	/* remember pid/way until we return. */
	FUNC2(&org_misc, &pid_misc);

	FUNC1(CTL_PTEADDR, (addr >> PAGE_SHIFT) << 2);

	for (way = 0; way < cpuinfo.tlb_num_ways; way++) {
		unsigned long pteaddr;
		unsigned long tlbmisc;

		tlbmisc = TLBMISC_RD | (way << TLBMISC_WAY_SHIFT);
		FUNC1(CTL_TLBMISC, tlbmisc);

		pteaddr = FUNC0(CTL_PTEADDR);
		if (((pteaddr >> 2) & 0xfffff) != (addr >> PAGE_SHIFT))
			continue;

		FUNC3("Flush entry by writing way=%dl pid=%ld\n",
			 way, (pid_misc >> TLBMISC_PID_SHIFT));

		tlbmisc = TLBMISC_WE | (way << TLBMISC_WAY_SHIFT);
		FUNC1(CTL_TLBMISC, tlbmisc);
		FUNC1(CTL_PTEADDR, FUNC4(addr));
		FUNC1(CTL_TLBACC, 0);
	}

	FUNC1(CTL_TLBMISC, org_misc);
}