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
typedef  unsigned long u32 ;
struct ttc_timer {scalar_t__ base_addr; } ;

/* Variables and functions */
 unsigned long CNT_CNTRL_RESET ; 
 unsigned long TTC_CNT_CNTRL_DISABLE_MASK ; 
 scalar_t__ TTC_CNT_CNTRL_OFFSET ; 
 scalar_t__ TTC_INTR_VAL_OFFSET ; 
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct ttc_timer *timer,
					unsigned long cycles)
{
	u32 ctrl_reg;

	/* Disable the counter, set the counter value  and re-enable counter */
	ctrl_reg = FUNC0(timer->base_addr + TTC_CNT_CNTRL_OFFSET);
	ctrl_reg |= TTC_CNT_CNTRL_DISABLE_MASK;
	FUNC1(ctrl_reg, timer->base_addr + TTC_CNT_CNTRL_OFFSET);

	FUNC1(cycles, timer->base_addr + TTC_INTR_VAL_OFFSET);

	/*
	 * Reset the counter (0x10) so that it starts from 0, one-shot
	 * mode makes this needed for timing to be right.
	 */
	ctrl_reg |= CNT_CNTRL_RESET;
	ctrl_reg &= ~TTC_CNT_CNTRL_DISABLE_MASK;
	FUNC1(ctrl_reg, timer->base_addr + TTC_CNT_CNTRL_OFFSET);
}