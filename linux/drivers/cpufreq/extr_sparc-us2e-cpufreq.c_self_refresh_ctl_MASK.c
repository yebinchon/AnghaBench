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
 int /*<<< orphan*/  HBIRD_MEM_CNTL0_ADDR ; 
 unsigned long MCTRL0_SREFRESH_ENAB ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC2(int enable)
{
	unsigned long mctrl = FUNC0(HBIRD_MEM_CNTL0_ADDR);

	if (enable)
		mctrl |= MCTRL0_SREFRESH_ENAB;
	else
		mctrl &= ~MCTRL0_SREFRESH_ENAB;
	FUNC1(HBIRD_MEM_CNTL0_ADDR, mctrl);
	(void) FUNC0(HBIRD_MEM_CNTL0_ADDR);
}