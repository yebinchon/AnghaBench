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
 int CACHE_LINE_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

__attribute__((used)) static void FUNC6(unsigned long start, unsigned long end)
{
	unsigned long vaddr;

	if (start == 0 && end == -1ul) {
		FUNC4();
		return;
	}

	vaddr = -1;  /* to force the first mapping */

	start &= ~(CACHE_LINE_SIZE - 1);
	while (start < end) {
		vaddr = FUNC1(start, vaddr);
		FUNC3(vaddr);
		FUNC5(vaddr);
		start += CACHE_LINE_SIZE;
	}

	FUNC2(vaddr);

	FUNC0();
}