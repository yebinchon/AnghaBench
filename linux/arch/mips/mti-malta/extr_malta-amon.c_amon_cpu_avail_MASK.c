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
struct cpulaunch {int flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CPULAUNCH ; 
 int LAUNCH_FGO ; 
 int LAUNCH_FGONE ; 
 int LAUNCH_FREADY ; 
 int NCPULAUNCH ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

int FUNC2(int cpu)
{
	struct cpulaunch *launch = (struct cpulaunch *)FUNC0(CPULAUNCH);

	if (cpu < 0 || cpu >= NCPULAUNCH) {
		FUNC1("avail: cpu%d is out of range\n", cpu);
		return 0;
	}

	launch += cpu;
	if (!(launch->flags & LAUNCH_FREADY)) {
		FUNC1("avail: cpu%d is not ready\n", cpu);
		return 0;
	}
	if (launch->flags & (LAUNCH_FGO|LAUNCH_FGONE)) {
		FUNC1("avail: too late.. cpu%d is already gone\n", cpu);
		return 0;
	}

	return 1;
}