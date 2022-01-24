#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct clock_event_device {int dummy; } ;
struct TYPE_5__ {int rate; } ;

/* Variables and functions */
 int HZ ; 
 int OMAP_TIMER_CTRL_AR ; 
 int OMAP_TIMER_CTRL_ST ; 
 int /*<<< orphan*/  OMAP_TIMER_LOAD_REG ; 
 int /*<<< orphan*/  OMAP_TIMER_POSTED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_1__ clkev ; 

__attribute__((used)) static int FUNC3(struct clock_event_device *evt)
{
	u32 period;

	FUNC1(&clkev, OMAP_TIMER_POSTED, clkev.rate);

	period = clkev.rate / HZ;
	period -= 1;
	/* Looks like we need to first set the load value separately */
	FUNC2(&clkev, OMAP_TIMER_LOAD_REG, 0xffffffff - period,
			      OMAP_TIMER_POSTED);
	FUNC0(&clkev,
				   OMAP_TIMER_CTRL_AR | OMAP_TIMER_CTRL_ST,
				   0xffffffff - period, OMAP_TIMER_POSTED);
	return 0;
}