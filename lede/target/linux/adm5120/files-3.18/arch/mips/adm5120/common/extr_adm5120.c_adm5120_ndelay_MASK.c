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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  SWITCH_REG_TIMER ; 
 int /*<<< orphan*/  SWITCH_REG_TIMER_INT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int TIMER_INT_TOM ; 
 int TIMER_INT_TOS ; 
 int TIMER_PERIOD_DEFAULT ; 
 int TIMER_PERIOD_MASK ; 
 int TIMER_TE ; 

void FUNC2(u32 ns)
{
	u32	t;

	FUNC1(SWITCH_REG_TIMER, TIMER_PERIOD_DEFAULT);
	FUNC1(SWITCH_REG_TIMER_INT, (TIMER_INT_TOS | TIMER_INT_TOM));

	t = (ns+640) / 640;
	t &= TIMER_PERIOD_MASK;
	FUNC1(SWITCH_REG_TIMER, t | TIMER_TE);

	/* wait until the timer expires */
	do {
		t = FUNC0(SWITCH_REG_TIMER_INT);
	} while ((t & TIMER_INT_TOS) == 0);

	/* leave the timer disabled */
	FUNC1(SWITCH_REG_TIMER, TIMER_PERIOD_DEFAULT);
	FUNC1(SWITCH_REG_TIMER_INT, (TIMER_INT_TOS | TIMER_INT_TOM));
}