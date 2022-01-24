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
typedef  int u8 ;
typedef  int u32 ;
struct eps_cpu_data {int dummy; } ;
struct cpufreq_policy {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  MSR_IA32_PERF_CTL ; 
 int /*<<< orphan*/  MSR_IA32_PERF_STATUS ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct eps_cpu_data *centaur,
			 struct cpufreq_policy *policy,
			 u32 dest_state)
{
	u32 lo, hi;
	int i;

	/* Wait while CPU is busy */
	FUNC1(MSR_IA32_PERF_STATUS, lo, hi);
	i = 0;
	while (lo & ((1 << 16) | (1 << 17))) {
		FUNC2(16);
		FUNC1(MSR_IA32_PERF_STATUS, lo, hi);
		i++;
		if (FUNC3(i > 64)) {
			return -ENODEV;
		}
	}
	/* Set new multiplier and voltage */
	FUNC4(MSR_IA32_PERF_CTL, dest_state & 0xffff, 0);
	/* Wait until transition end */
	i = 0;
	do {
		FUNC2(16);
		FUNC1(MSR_IA32_PERF_STATUS, lo, hi);
		i++;
		if (FUNC3(i > 64)) {
			return -ENODEV;
		}
	} while (lo & ((1 << 16) | (1 << 17)));

#ifdef DEBUG
	{
	u8 current_multiplier, current_voltage;

	/* Print voltage and multiplier */
	rdmsr(MSR_IA32_PERF_STATUS, lo, hi);
	current_voltage = lo & 0xff;
	pr_info("Current voltage = %dmV\n", current_voltage * 16 + 700);
	current_multiplier = (lo >> 8) & 0xff;
	pr_info("Current multiplier = %d\n", current_multiplier);
	}
#endif
	return 0;
}