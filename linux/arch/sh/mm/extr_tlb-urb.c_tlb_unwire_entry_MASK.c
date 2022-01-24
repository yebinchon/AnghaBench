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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MMUCR ; 
 unsigned long MMUCR_URB ; 
 int MMUCR_URB_NENTRIES ; 
 unsigned long MMUCR_URB_SHIFT ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

void FUNC6(void)
{
	unsigned long status, flags;
	int urb;

	FUNC5(flags);

	status = FUNC1(MMUCR);
	urb = (status & MMUCR_URB) >> MMUCR_URB_SHIFT;
	status &= ~MMUCR_URB;

	/*
	 * Make sure we're not trying to unwire a TLB entry when none
	 * have been wired.
	 */
	FUNC0(urb++ == MMUCR_URB_NENTRIES);

	urb = urb % MMUCR_URB_NENTRIES;

	status |= (urb << MMUCR_URB_SHIFT);
	FUNC2(status, MMUCR);
	FUNC3();

	FUNC4(flags);
}