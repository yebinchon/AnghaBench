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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  __init_begin ; 
 int /*<<< orphan*/  __init_end ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

void FUNC6(void)
{
	unsigned long addr;

	addr = (unsigned long) &__init_begin;

	while (addr < (unsigned long) &__init_end) {
		FUNC0(FUNC5(addr));
		FUNC2(FUNC5(addr));
		FUNC1(addr);
		FUNC4();
		addr += PAGE_SIZE;
	}

	FUNC3("Freeing unused kernel memory: %dk freed\n",
	((unsigned int)&__init_end - (unsigned int)&__init_begin) >> 10);
}