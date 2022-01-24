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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ base; } ;
struct sun5i_timer_clkevt {TYPE_1__ timer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ TIMER_SYNC_TICKS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct sun5i_timer_clkevt *ce)
{
	u32 old = FUNC2(ce->timer.base + FUNC0(1));

	while ((old - FUNC2(ce->timer.base + FUNC0(1))) < TIMER_SYNC_TICKS)
		FUNC1();
}