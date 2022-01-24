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
typedef  int u64 ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  PRD12 ; 
 int /*<<< orphan*/  PRD34 ; 
 int /*<<< orphan*/  TCR ; 
 int TCR_ENAMODE_MASK ; 
 int /*<<< orphan*/  TIM12 ; 
 int /*<<< orphan*/  TIM34 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(u64 period, int mask)
{
	u32 tcr;
	u32 off;

	tcr = FUNC1(TCR);
	off = tcr & ~(TCR_ENAMODE_MASK);

	/* set enable mode */
	tcr |= mask;

	/* disable timer */
	FUNC2(off, TCR);
	/* here we have to be sure the timer has been disabled */
	FUNC0();

	/* reset counter to zero, set new period */
	FUNC2(0, TIM12);
	FUNC2(0, TIM34);
	FUNC2(period & 0xffffffff, PRD12);
	FUNC2(period >> 32, PRD34);

	/*
	 * enable timer
	 * here we have to be sure that CNTLO, CNTHI, PRDLO, PRDHI registers
	 * have been written.
	 */
	FUNC0();
	FUNC2(tcr, TCR);
	return 0;
}