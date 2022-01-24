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
 int BAD_APICID ; 
 int NUMA_NO_NODE ; 
 int* __apicid_to_node ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  x86_cpu_to_apicid ; 

int FUNC1(int cpu)
{
	int apicid = FUNC0(x86_cpu_to_apicid, cpu);

	if (apicid != BAD_APICID)
		return __apicid_to_node[apicid];
	return NUMA_NO_NODE;
}