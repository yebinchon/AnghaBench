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
struct dw_apb_clocksource {int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int APBTMR_CONTROL_ENABLE ; 
 int APBTMR_CONTROL_INT ; 
 int APBTMR_CONTROL_MODE_PERIODIC ; 
 int /*<<< orphan*/  APBTMR_N_CONTROL ; 
 int /*<<< orphan*/  APBTMR_N_LOAD_COUNT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_apb_clocksource*) ; 

void FUNC3(struct dw_apb_clocksource *dw_cs)
{
	/*
	 * start count down from 0xffff_ffff. this is done by toggling the
	 * enable bit then load initial load count to ~0.
	 */
	u32 ctrl = FUNC0(&dw_cs->timer, APBTMR_N_CONTROL);

	ctrl &= ~APBTMR_CONTROL_ENABLE;
	FUNC1(&dw_cs->timer, ctrl, APBTMR_N_CONTROL);
	FUNC1(&dw_cs->timer, ~0, APBTMR_N_LOAD_COUNT);
	/* enable, mask interrupt */
	ctrl &= ~APBTMR_CONTROL_MODE_PERIODIC;
	ctrl |= (APBTMR_CONTROL_ENABLE | APBTMR_CONTROL_INT);
	FUNC1(&dw_cs->timer, ctrl, APBTMR_N_CONTROL);
	/* read it once to get cached counter value initialized */
	FUNC2(dw_cs);
}