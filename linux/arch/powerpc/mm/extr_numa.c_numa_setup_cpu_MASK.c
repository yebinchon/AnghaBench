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

/* Variables and functions */
 int NUMA_NO_NODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int first_online_node ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int* numa_cpu_lookup_table ; 
 struct device_node* FUNC4 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 int FUNC6 (struct device_node*) ; 

__attribute__((used)) static int FUNC7(unsigned long lcpu)
{
	int nid = NUMA_NO_NODE;
	struct device_node *cpu;

	/*
	 * If a valid cpu-to-node mapping is already available, use it
	 * directly instead of querying the firmware, since it represents
	 * the most recent mapping notified to us by the platform (eg: VPHN).
	 */
	if ((nid = numa_cpu_lookup_table[lcpu]) >= 0) {
		FUNC2(lcpu, nid);
		return nid;
	}

	cpu = FUNC4(lcpu, NULL);

	if (!cpu) {
		FUNC0(1);
		if (FUNC1(lcpu))
			goto out_present;
		else
			goto out;
	}

	nid = FUNC6(cpu);

out_present:
	if (nid < 0 || !FUNC3(nid))
		nid = first_online_node;

	FUNC2(lcpu, nid);
	FUNC5(cpu);
out:
	return nid;
}