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
struct rt_timer {int timer_freq; int timer_div; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIMER_REG_TMR0CTL ; 
 int /*<<< orphan*/  TIMER_REG_TMR0LOAD ; 
 int TMR0CTL_ENABLE ; 
 int FUNC0 (struct rt_timer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt_timer*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct rt_timer *rt)
{
	u32 t;

	FUNC1(rt, TIMER_REG_TMR0LOAD, rt->timer_freq / rt->timer_div);

	t = FUNC0(rt, TIMER_REG_TMR0CTL);
	t |= TMR0CTL_ENABLE;
	FUNC1(rt, TIMER_REG_TMR0CTL, t);

	return 0;
}