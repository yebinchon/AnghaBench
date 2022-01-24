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
 scalar_t__ FUNC0 () ; 
 unsigned long FUNC1 () ; 
 unsigned long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ tb_invalid ; 

void FUNC6(unsigned long loops)
{
	unsigned long start;
	int diff;

	FUNC3();
	if (FUNC0()) {
		start = FUNC1();
		do {
			/* the RTCL register wraps at 1000000000 */
			diff = FUNC1() - start;
			if (diff < 0)
				diff += 1000000000;
			FUNC4();
		} while (diff < loops);
	} else if (tb_invalid) {
		/*
		 * TB is in error state and isn't ticking anymore.
		 * HMI handler was unable to recover from TB error.
		 * Return immediately, so that kernel won't get stuck here.
		 */
		FUNC4();
	} else {
		start = FUNC2();
		while (FUNC2() - start < loops)
			FUNC4();
	}
	FUNC5();
}