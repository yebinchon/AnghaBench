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

/* Variables and functions */
 int CPUFREQ_HIGH ; 
 scalar_t__ pfunc_cpu0_volt_high ; 
 scalar_t__ pfunc_cpu0_volt_low ; 
 scalar_t__ pfunc_cpu1_volt_high ; 
 scalar_t__ pfunc_cpu1_volt_low ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(int speed_mode)
{
	if (speed_mode == CPUFREQ_HIGH) {
		if (pfunc_cpu0_volt_high)
			FUNC0(pfunc_cpu0_volt_high, NULL);
		if (pfunc_cpu1_volt_high)
			FUNC0(pfunc_cpu1_volt_high, NULL);
	} else {
		if (pfunc_cpu0_volt_low)
			FUNC0(pfunc_cpu0_volt_low, NULL);
		if (pfunc_cpu1_volt_low)
			FUNC0(pfunc_cpu1_volt_low, NULL);
	}
	FUNC1(10000, 10000); /* should be faster , to fix */
}