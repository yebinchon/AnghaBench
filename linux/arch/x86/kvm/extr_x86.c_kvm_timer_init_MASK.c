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
struct TYPE_2__ {scalar_t__ max_freq; } ;
struct cpufreq_policy {TYPE_1__ cpuinfo; } ;
typedef  int /*<<< orphan*/  policy ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_TRANSITION_NOTIFIER ; 
 int /*<<< orphan*/  CPUHP_AP_X86_KVM_CLK_ONLINE ; 
 int /*<<< orphan*/  X86_FEATURE_CONSTANT_TSC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cpufreq_policy*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  kvmclock_cpu_down_prep ; 
 int /*<<< orphan*/  kvmclock_cpu_online ; 
 int /*<<< orphan*/  kvmclock_cpufreq_notifier_block ; 
 scalar_t__ max_tsc_khz ; 
 int /*<<< orphan*/  FUNC5 (struct cpufreq_policy*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ tsc_khz ; 

__attribute__((used)) static void FUNC7(void)
{
	max_tsc_khz = tsc_khz;

	if (!FUNC0(X86_FEATURE_CONSTANT_TSC)) {
#ifdef CONFIG_CPU_FREQ
		struct cpufreq_policy policy;
		int cpu;

		memset(&policy, 0, sizeof(policy));
		cpu = get_cpu();
		cpufreq_get_policy(&policy, cpu);
		if (policy.cpuinfo.max_freq)
			max_tsc_khz = policy.cpuinfo.max_freq;
		put_cpu();
#endif
		FUNC2(&kvmclock_cpufreq_notifier_block,
					  CPUFREQ_TRANSITION_NOTIFIER);
	}

	FUNC3(CPUHP_AP_X86_KVM_CLK_ONLINE, "x86/kvm/clk:online",
			  kvmclock_cpu_online, kvmclock_cpu_down_prep);
}