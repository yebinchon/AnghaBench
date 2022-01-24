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
 int /*<<< orphan*/  FUNC0 (void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 () ; 

void FUNC4(void *kaddr, unsigned long len)
{
	unsigned long addr = (unsigned long)kaddr;

	if (FUNC3()) {
		FUNC0(kaddr, len);
		FUNC1();
	} else {
		/*
		 * Don't issue kick_all_cpus_sync() after I-cache invalidation
		 * for user mappings.
		 */
		FUNC2(addr, addr + len);
	}
}