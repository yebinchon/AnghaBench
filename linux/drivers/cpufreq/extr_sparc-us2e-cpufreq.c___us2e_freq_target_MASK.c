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
 int /*<<< orphan*/  HBIRD_ESTAR_MODE_ADDR ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (unsigned int) ; 
 unsigned long FUNC2 (unsigned int) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 () ; 
 int FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC7(void *arg)
{
	unsigned int cpu = FUNC4();
	unsigned int *index = arg;
	unsigned long new_bits, new_freq;
	unsigned long clock_tick, divisor, old_divisor, estar;

	new_freq = clock_tick = FUNC5(cpu) / 1000;
	new_bits = FUNC2(*index);
	divisor = FUNC1(*index);
	new_freq /= divisor;

	estar = FUNC3(HBIRD_ESTAR_MODE_ADDR);

	old_divisor = FUNC0(estar);

	if (old_divisor != divisor) {
		FUNC6(estar, new_bits, clock_tick * 1000,
				old_divisor, divisor);
	}
}