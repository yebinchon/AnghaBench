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
 scalar_t__ FUNC0 (unsigned int*) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,unsigned int) ; 
 unsigned int FUNC3 (unsigned int*,unsigned int*) ; 

__attribute__((used)) static int FUNC4(unsigned int *src, unsigned int *dest,
				 unsigned int *alt_start, unsigned int *alt_end)
{
	unsigned int instr;

	instr = *src;

	if (FUNC1(*src)) {
		unsigned int *target = (unsigned int *)FUNC0(src);

		/* Branch within the section doesn't need translating */
		if (target < alt_start || target > alt_end) {
			instr = FUNC3(dest, src);
			if (!instr)
				return 1;
		}
	}

	FUNC2(dest, instr);

	return 0;
}