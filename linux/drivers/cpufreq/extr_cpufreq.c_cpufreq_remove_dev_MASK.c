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
struct subsys_interface {int dummy; } ;
struct device {unsigned int id; } ;
struct cpufreq_policy {int /*<<< orphan*/  real_cpus; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* exit ) (struct cpufreq_policy*) ;scalar_t__ offline; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  cpufreq_cpu_data ; 
 TYPE_1__* cpufreq_driver ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct cpufreq_policy* FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct cpufreq_policy*,struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct cpufreq_policy*) ; 

__attribute__((used)) static void FUNC8(struct device *dev, struct subsys_interface *sif)
{
	unsigned int cpu = dev->id;
	struct cpufreq_policy *policy = FUNC5(cpufreq_cpu_data, cpu);

	if (!policy)
		return;

	if (FUNC0(cpu))
		FUNC1(cpu);

	FUNC3(cpu, policy->real_cpus);
	FUNC6(policy, dev);

	if (FUNC4(policy->real_cpus)) {
		/* We did light-weight exit earlier, do full tear down now */
		if (cpufreq_driver->offline)
			cpufreq_driver->exit(policy);

		FUNC2(policy);
	}
}