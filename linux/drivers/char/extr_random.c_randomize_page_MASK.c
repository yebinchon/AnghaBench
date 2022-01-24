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
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long ULONG_MAX ; 
 unsigned long FUNC2 () ; 

unsigned long
FUNC3(unsigned long start, unsigned long range)
{
	if (!FUNC1(start)) {
		range -= FUNC0(start) - start;
		start = FUNC0(start);
	}

	if (start > ULONG_MAX - range)
		range = ULONG_MAX - start;

	range >>= PAGE_SHIFT;

	if (range == 0)
		return start;

	return start + (FUNC2() % range << PAGE_SHIFT);
}