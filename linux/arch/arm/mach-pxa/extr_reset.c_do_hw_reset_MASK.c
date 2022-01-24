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
 int /*<<< orphan*/  MDREFR ; 
 scalar_t__ MDREFR_SLFRSH ; 
 int /*<<< orphan*/  OSCR ; 
 int /*<<< orphan*/  OSMR3 ; 
 int /*<<< orphan*/  OSSR ; 
 scalar_t__ OSSR_M3 ; 
 int /*<<< orphan*/  OWER ; 
 scalar_t__ OWER_WME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	/* Initialize the watchdog and let it fire */
	FUNC1(OWER_WME, OWER);
	FUNC1(OSSR_M3, OSSR);
	/* ... in 100 ms */
	FUNC1(FUNC0(OSCR) + 368640, OSMR3);
	/*
	 * SDRAM hangs on watchdog reset on Marvell PXA270 (erratum 71)
	 * we put SDRAM into self-refresh to prevent that
	 */
	while (1)
		FUNC1(MDREFR_SLFRSH, MDREFR);
}