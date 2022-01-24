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
 int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  cache_lock ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(unsigned int *start,
					 unsigned int *end,
					 unsigned int bar_reg,
					 unsigned int wc_reg)
{
	unsigned long flags;
	unsigned int wcnt =
		(FUNC0((unsigned int) end)
		 - FUNC1((unsigned int) start)) >> 2;
	unsigned int wc = 0;

	for (; wcnt; wcnt -= wc, start += wc) {

		FUNC4(&cache_lock, flags);

		FUNC3(bar_reg, FUNC1((unsigned int) start));

		if (wcnt > 0xffff)
			wc = 0xffff;
		else
			wc = wcnt;

		/* Set word count value in the WC register */
		FUNC3(wc_reg, wc & 0xffff);

		FUNC5(&cache_lock, flags);

		/* Don't wait for completion on last cache operation */
		if (wcnt > 0xffff)
			FUNC2(wc_reg);
	}
}