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
 int /*<<< orphan*/  MMUCR ; 
 unsigned long MMUCR_URB ; 
 unsigned long MMUCR_URB_NENTRIES ; 
 unsigned long MMUCR_URB_SHIFT ; 
 int MMU_ITLB_ADDRESS_ARRAY ; 
 int MMU_UTLB_ADDRESS_ARRAY ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 

void FUNC7(void)
{
	unsigned long flags, status;
	int i;

	/*
	 * Flush all the TLB.
	 */
	FUNC6(flags);
	FUNC4();

	status = FUNC0(MMUCR);
	status = ((status & MMUCR_URB) >> MMUCR_URB_SHIFT);

	if (status == 0)
		status = MMUCR_URB_NENTRIES;

	for (i = 0; i < status; i++)
		FUNC1(0x0, MMU_UTLB_ADDRESS_ARRAY | (i << 8));

	for (i = 0; i < 4; i++)
		FUNC1(0x0, MMU_ITLB_ADDRESS_ARRAY | (i << 8));

	FUNC2();
	FUNC3();
	FUNC5(flags);
}