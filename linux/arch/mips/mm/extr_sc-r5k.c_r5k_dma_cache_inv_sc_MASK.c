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
 int /*<<< orphan*/  R5K_Page_Invalidate_S ; 
 int SC_PAGE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long scache_size ; 

__attribute__((used)) static void FUNC3(unsigned long addr, unsigned long size)
{
	unsigned long end, a;

	/* Catch bad driver code */
	FUNC0(size == 0);

	if (size >= scache_size) {
		FUNC1();
		return;
	}

	/* On the R5000 secondary cache we cannot
	 * invalidate less than a page at a time.
	 * The secondary cache is physically indexed, write-through.
	 */
	a = addr & ~(SC_PAGE - 1);
	end = (addr + size - 1) & ~(SC_PAGE - 1);
	while (a <= end) {
		FUNC2(R5K_Page_Invalidate_S, a);
		a += SC_PAGE;
	}
}