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
struct clock_event_device {int dummy; } ;
struct TYPE_2__ {int features; } ;

/* Variables and functions */
 int HV_MSR_SYNTIMER_AVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (struct clock_event_device*) ; 
 int /*<<< orphan*/  hv_clock_event ; 
 TYPE_1__ ms_hyperv ; 
 struct clock_event_device* FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

void FUNC2(unsigned int cpu)
{
	struct clock_event_device *ce;

	/* Turn off clockevent device */
	if (ms_hyperv.features & HV_MSR_SYNTIMER_AVAILABLE) {
		ce = FUNC1(hv_clock_event, cpu);
		FUNC0(ce);
	}
}