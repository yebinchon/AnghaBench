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
 unsigned long PAGE_MASK ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(unsigned long start, unsigned long end)
{
	unsigned long flags;

	/* exactly same as above, except for TLB entry not taking ASID */

	if (FUNC4((end - start) >= PAGE_SIZE * 32)) {
		FUNC0();
		return;
	}

	start &= PAGE_MASK;

	FUNC2(flags);
	while (start < end) {
		FUNC3(start);
		start += PAGE_SIZE;
	}

	FUNC5();

	FUNC1(flags);
}