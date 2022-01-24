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
 int /*<<< orphan*/  MCF_CCM_MISCCR ; 
 int MCF_CCM_MISCCR_LIMP ; 
 int MCF_CCM_MISCCR_PLL_LOCK ; 
 int FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

int FUNC3(void)
{
	int fout;
	
	/* Exit LIMP mode */
	FUNC2(FUNC1(MCF_CCM_MISCCR) & ~MCF_CCM_MISCCR_LIMP, MCF_CCM_MISCCR);

	/* Wait for PLL to lock */
	while (!(FUNC1(MCF_CCM_MISCCR) & MCF_CCM_MISCCR_PLL_LOCK))
		;
	
	fout = FUNC0();

	return fout;
}