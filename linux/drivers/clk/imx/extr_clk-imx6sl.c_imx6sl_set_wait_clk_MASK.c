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
 int ARM_WAIT_DIV_396M ; 
 int BM_CDHIPR_ARM_PODF_BUSY ; 
 scalar_t__ CACRR ; 
 scalar_t__ CDHIPR ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ ccm_base ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 unsigned long FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,scalar_t__) ; 

void FUNC5(bool enter)
{
	static unsigned long saved_arm_div;
	int arm_div_for_wait = FUNC2();

	/*
	 * According to hardware design, arm podf change need
	 * PLL1 clock enabled.
	 */
	if (arm_div_for_wait == ARM_WAIT_DIV_396M)
		FUNC1(true);

	if (enter) {
		saved_arm_div = FUNC3(ccm_base + CACRR);
		FUNC4(arm_div_for_wait, ccm_base + CACRR);
	} else {
		FUNC4(saved_arm_div, ccm_base + CACRR);
	}
	while (FUNC0(ccm_base + CDHIPR) & BM_CDHIPR_ARM_PODF_BUSY)
		;

	if (arm_div_for_wait == ARM_WAIT_DIV_396M)
		FUNC1(false);
}