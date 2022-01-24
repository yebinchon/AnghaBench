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
 int /*<<< orphan*/  CONFIG_SMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 unsigned long parisc_cache_flush_threshold ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 

void FUNC5(void *vaddr, int size)
{
	unsigned long start = (unsigned long)vaddr;
	unsigned long end = start + size;

	if ((!FUNC0(CONFIG_SMP) || !FUNC1()) &&
	    (unsigned long)size >= parisc_cache_flush_threshold) {
		FUNC3(start, end);
		FUNC2();
		return;
	}

	FUNC4(start, end);
	FUNC3(start, end);
}