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
typedef  unsigned long uint32_t ;
struct oxnas_rps_timer {unsigned long timer_prescaler; scalar_t__ clkevt_base; } ;

/* Variables and functions */
 scalar_t__ TIMER_CTRL_REG ; 
 unsigned long TIMER_ENABLE ; 
 scalar_t__ TIMER_LOAD_REG ; 
 unsigned long TIMER_PERIODIC ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct oxnas_rps_timer *rps,
				   unsigned long period,
				   unsigned int periodic)
{
	uint32_t cfg = rps->timer_prescaler;

	if (period)
		cfg |= TIMER_ENABLE;

	if (periodic)
		cfg |= TIMER_PERIODIC;

	FUNC0(period, rps->clkevt_base + TIMER_LOAD_REG);
	FUNC0(cfg, rps->clkevt_base + TIMER_CTRL_REG);
}