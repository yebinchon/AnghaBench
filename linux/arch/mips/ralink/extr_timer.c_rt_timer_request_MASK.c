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
struct rt_timer {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIMER_REG_TMR0CTL ; 
 int TMR0CTL_MODE_PERIODIC ; 
 int TMR0CTL_PRESCALE_VAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rt_timer*) ; 
 int /*<<< orphan*/  rt_timer_irq ; 
 int /*<<< orphan*/  FUNC3 (struct rt_timer*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct rt_timer *rt)
{
	int err = FUNC2(rt->irq, rt_timer_irq, 0,
						FUNC1(rt->dev), rt);
	if (err) {
		FUNC0(rt->dev, "failed to request irq\n");
	} else {
		u32 t = TMR0CTL_MODE_PERIODIC | TMR0CTL_PRESCALE_VAL;
		FUNC3(rt, TIMER_REG_TMR0CTL, t);
	}
	return err;
}