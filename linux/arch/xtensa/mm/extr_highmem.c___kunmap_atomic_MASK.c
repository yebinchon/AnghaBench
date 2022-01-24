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
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 scalar_t__ FIXADDR_START ; 
 scalar_t__ FIXADDR_TOP ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  init_mm ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ kmap_pte ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*,scalar_t__) ; 

void FUNC8(void *kvaddr)
{
	if (kvaddr >= (void *)FIXADDR_START &&
	    kvaddr < (void *)FIXADDR_TOP) {
		int idx = FUNC3(FUNC1(),
				   FUNC0((unsigned long)kvaddr));

		/*
		 * Force other mappings to Oops if they'll try to access this
		 * pte without first remap it.  Keeping stale mappings around
		 * is a bad idea also, in case the page changes cacheability
		 * attributes or becomes a protected page in a hypervisor.
		 */
		FUNC7(&init_mm, kvaddr, kmap_pte + idx);
		FUNC4((unsigned long)kvaddr,
					     (unsigned long)kvaddr + PAGE_SIZE);

		FUNC2();
	}

	FUNC5();
	FUNC6();
}