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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sun5i_timer_clkevt*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct sun5i_timer_clkevt *ce, u8 timer)
{
	u32 val = FUNC1(ce->timer.base + FUNC0(timer));
	FUNC3(val & ~TIMER_CTL_ENABLE, ce->timer.base + FUNC0(timer));

	FUNC2(ce);
}