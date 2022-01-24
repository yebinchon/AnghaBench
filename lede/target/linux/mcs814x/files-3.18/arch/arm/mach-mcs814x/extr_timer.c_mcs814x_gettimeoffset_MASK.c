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
 scalar_t__ TIMER_VAL ; 
 int last_reload ; 
 scalar_t__ mcs814x_timer_base ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static u32 FUNC2(void)
{
	u32 ticks = FUNC0(mcs814x_timer_base + TIMER_VAL);

	if (ticks < last_reload)
		return FUNC1(ticks + (u32)(0xffffffff - last_reload));
	else
		return FUNC1(ticks - last_reload);
}