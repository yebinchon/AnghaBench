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
 int FUNC0 (int) ; 
 void* FUNC1 (void*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,char*,int) ; 
 int timebase_period_ns ; 

void FUNC4(u32 cpu, u32 tb, u32 bus)
{
	void *devp = NULL;

	FUNC2("CPU clock-frequency <- 0x%x (%dMHz)\n\r", cpu, FUNC0(cpu));
	FUNC2("CPU timebase-frequency <- 0x%x (%dMHz)\n\r", tb, FUNC0(tb));
	if (bus > 0)
		FUNC2("CPU bus-frequency <- 0x%x (%dMHz)\n\r", bus, FUNC0(bus));

	while ((devp = FUNC1(devp, "cpu"))) {
		FUNC3(devp, "clock-frequency", cpu);
		FUNC3(devp, "timebase-frequency", tb);
		if (bus > 0)
			FUNC3(devp, "bus-frequency", bus);
	}

	timebase_period_ns = 1000000000 / tb;
}