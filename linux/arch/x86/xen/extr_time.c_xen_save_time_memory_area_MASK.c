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
struct TYPE_2__ {int /*<<< orphan*/ * v; } ;
struct vcpu_register_time_memory_area {TYPE_1__ addr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vcpu_register_time_memory_area*) ; 
 int /*<<< orphan*/  VCPUOP_register_vcpu_time_memory_area ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  xen_clock ; 
 scalar_t__ xen_clock_value_saved ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ xen_sched_clock_offset ; 

void FUNC4(void)
{
	struct vcpu_register_time_memory_area t;
	int ret;

	xen_clock_value_saved = FUNC3() - xen_sched_clock_offset;

	if (!xen_clock)
		return;

	t.addr.v = NULL;

	ret = FUNC0(VCPUOP_register_vcpu_time_memory_area, 0, &t);
	if (ret != 0)
		FUNC2("Cannot save secondary vcpu_time_info (err %d)",
			  ret);
	else
		FUNC1(xen_clock);
}