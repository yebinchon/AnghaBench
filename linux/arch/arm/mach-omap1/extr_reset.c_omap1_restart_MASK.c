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
typedef  enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_RSTCT1 ; 
 int /*<<< orphan*/  DPLL_CTL ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

void FUNC3(enum reboot_mode mode, const char *cmd)
{
	/*
	 * Workaround for 5912/1611b bug mentioned in sprz209d.pdf p. 28
	 * "Global Software Reset Affects Traffic Controller Frequency".
	 */
	if (FUNC0()) {
		FUNC2(FUNC1(DPLL_CTL) & ~(1 << 4), DPLL_CTL);
		FUNC2(0x8, ARM_RSTCT1);
	}

	FUNC2(1, ARM_RSTCT1);
}