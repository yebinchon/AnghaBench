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
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  cpumask_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int,int /*<<< orphan*/  const*) ; 
 int nr_cpu_ids ; 
 struct device_node* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (struct device_node*,char*,unsigned int) ; 

__attribute__((used)) static bool FUNC5(struct device_node *state_node, unsigned int idx,
			     const cpumask_t *cpumask)
{
	int cpu;
	struct device_node *cpu_node, *curr_state_node;
	bool valid = true;

	/*
	 * Compare idle state phandles for index idx on all CPUs in the
	 * CPUidle driver cpumask. Start from next logical cpu following
	 * cpumask_first(cpumask) since that's the CPU state_node was
	 * retrieved from. If a mismatch is found bail out straight
	 * away since we certainly hit a firmware misconfiguration.
	 */
	for (cpu = FUNC1(FUNC0(cpumask), cpumask);
	     cpu < nr_cpu_ids; cpu = FUNC1(cpu, cpumask)) {
		cpu_node = FUNC2(cpu);
		curr_state_node = FUNC4(cpu_node, "cpu-idle-states",
						   idx);
		if (state_node != curr_state_node)
			valid = false;

		FUNC3(curr_state_node);
		FUNC3(cpu_node);
		if (!valid)
			break;
	}

	return valid;
}