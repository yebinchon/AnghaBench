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
 int BUSDIV ; 
 int FREF ; 
 int /*<<< orphan*/  MCF_CCM_CDR ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  MCF_CCM_MISCCR ; 
 int MCF_CCM_MISCCR_LIMP ; 
 int /*<<< orphan*/  MCF_PLL_PFDR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(void)
{
	int divider;
	
	/* Test to see if device is in LIMP mode */
	if (FUNC2(MCF_CCM_MISCCR) & MCF_CCM_MISCCR_LIMP) {
		divider = FUNC2(MCF_CCM_CDR) & FUNC0(0xF);
		return (FREF/(2 << divider));
	}
	else
		return (FREF * FUNC1(MCF_PLL_PFDR)) / (BUSDIV * 4);
}