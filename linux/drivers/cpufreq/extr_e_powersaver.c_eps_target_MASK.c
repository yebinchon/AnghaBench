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
struct eps_cpu_data {TYPE_1__* freq_table; } ;
struct cpufreq_policy {unsigned int cpu; } ;
struct TYPE_2__ {int driver_data; } ;

/* Variables and functions */
 int ENODEV ; 
 struct eps_cpu_data** eps_cpu ; 
 int FUNC0 (struct eps_cpu_data*,struct cpufreq_policy*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct cpufreq_policy *policy, unsigned int index)
{
	struct eps_cpu_data *centaur;
	unsigned int cpu = policy->cpu;
	unsigned int dest_state;
	int ret;

	if (FUNC2(eps_cpu[cpu] == NULL))
		return -ENODEV;
	centaur = eps_cpu[cpu];

	/* Make frequency transition */
	dest_state = centaur->freq_table[index].driver_data & 0xffff;
	ret = FUNC0(centaur, policy, dest_state);
	if (ret)
		FUNC1("Timeout!\n");
	return ret;
}