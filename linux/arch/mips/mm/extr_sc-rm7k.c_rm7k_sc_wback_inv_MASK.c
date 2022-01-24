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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  rm7k_tcache_init ; 
 int tc_pagesize ; 

__attribute__((used)) static void FUNC4(unsigned long addr, unsigned long size)
{
	unsigned long end, a;

	FUNC3("rm7k_sc_wback_inv[%08lx,%08lx]", addr, size);

	/* Catch bad driver code */
	FUNC0(size == 0);

	FUNC1(addr, addr + size);

	if (!rm7k_tcache_init)
		return;

	a = addr & ~(tc_pagesize - 1);
	end = (addr + size - 1) & ~(tc_pagesize - 1);
	while(1) {
		FUNC2(a);	/* Page_Invalidate_T */
		if (a == end)
			break;
		a += tc_pagesize;
	}
}