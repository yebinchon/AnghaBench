#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ base; } ;
struct sun5i_timer_clkevt {TYPE_1__ timer; } ;

/* Variables and functions */
 int TIMER_CTL_ENABLE ; 
 int TIMER_CTL_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int TIMER_CTL_RELOAD ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct sun5i_timer_clkevt *ce, u8 timer, bool periodic)
{
	u32 val = FUNC1(ce->timer.base + FUNC0(timer));

	if (periodic)
		val &= ~TIMER_CTL_ONESHOT;
	else
		val |= TIMER_CTL_ONESHOT;

	FUNC2(val | TIMER_CTL_ENABLE | TIMER_CTL_RELOAD,
	       ce->timer.base + FUNC0(timer));
}