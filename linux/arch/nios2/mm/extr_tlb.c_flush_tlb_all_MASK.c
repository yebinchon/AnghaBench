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
struct TYPE_2__ {unsigned int tlb_num_lines; unsigned int tlb_num_ways; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_PTEADDR ; 
 int /*<<< orphan*/  CTL_TLBACC ; 
 int /*<<< orphan*/  CTL_TLBMISC ; 
 scalar_t__ PAGE_SIZE ; 
 unsigned long TLBMISC_WE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 TYPE_1__ cpuinfo ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,unsigned long*) ; 
 unsigned long FUNC2 (unsigned long) ; 

void FUNC3(void)
{
	unsigned long addr = 0;
	unsigned int line;
	unsigned int way;
	unsigned long org_misc, pid_misc;

	/* remember pid/way until we return */
	FUNC1(&org_misc, &pid_misc);

	/* Start at way 0, way is auto-incremented after each TLBACC write */
	FUNC0(CTL_TLBMISC, TLBMISC_WE);

	/* Map each TLB entry to physcal address 0 with no-access and a
	   bad ptbase */
	for (line = 0; line < cpuinfo.tlb_num_lines; line++) {
		FUNC0(CTL_PTEADDR, FUNC2(addr));
		for (way = 0; way < cpuinfo.tlb_num_ways; way++)
			FUNC0(CTL_TLBACC, 0);

		addr += PAGE_SIZE;
	}

	/* restore pid/way */
	FUNC0(CTL_TLBMISC, org_misc);
}