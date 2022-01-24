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
 int /*<<< orphan*/  CONFIG_SMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int) ; 
 unsigned long parisc_tlb_flush_threshold ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 

int FUNC8(unsigned long sid, unsigned long start,
		      unsigned long end)
{
	unsigned long flags;

	if ((!FUNC0(CONFIG_SMP) || !FUNC1()) &&
	    end - start >= parisc_tlb_flush_threshold) {
		FUNC2();
		return 1;
	}

	/* Purge TLB entries for small ranges using the pdtlb and
	   pitlb instructions.  These instructions execute locally
	   but cause a purge request to be broadcast to other TLBs.  */
	while (start < end) {
		FUNC7(flags);
		FUNC3(sid, 1);
		FUNC4(start);
		FUNC5(start);
		FUNC6(flags);
		start += PAGE_SIZE;
	}
	return 0;
}