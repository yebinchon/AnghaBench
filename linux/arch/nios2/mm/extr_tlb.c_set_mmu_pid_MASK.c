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
 int /*<<< orphan*/  CTL_TLBMISC ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long TLBMISC_PID_MASK ; 
 unsigned long TLBMISC_PID_SHIFT ; 
 unsigned long TLBMISC_WAY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC2(unsigned long pid)
{
	unsigned long tlbmisc;

	tlbmisc = FUNC0(CTL_TLBMISC);
	tlbmisc = (tlbmisc & TLBMISC_WAY);
	tlbmisc |= (pid & TLBMISC_PID_MASK) << TLBMISC_PID_SHIFT;
	FUNC1(CTL_TLBMISC, tlbmisc);
}