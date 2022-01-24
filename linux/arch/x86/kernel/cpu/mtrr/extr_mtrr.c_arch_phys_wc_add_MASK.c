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
 int MTRR_TO_PHYS_WC_OFFSET ; 
 int /*<<< orphan*/  MTRR_TYPE_WRCOMB ; 
 int FUNC0 (unsigned long,unsigned long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,void*,void*) ; 

int FUNC4(unsigned long base, unsigned long size)
{
	int ret;

	if (FUNC2() || !FUNC1())
		return 0;  /* Success!  (We don't need to do anything.) */

	ret = FUNC0(base, size, MTRR_TYPE_WRCOMB, true);
	if (ret < 0) {
		FUNC3("Failed to add WC MTRR for [%p-%p]; performance may suffer.",
			(void *)base, (void *)(base + size - 1));
		return ret;
	}
	return ret + MTRR_TO_PHYS_WC_OFFSET;
}