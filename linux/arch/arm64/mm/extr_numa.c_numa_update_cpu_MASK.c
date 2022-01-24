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
 int NUMA_NO_NODE ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * node_to_cpumask_map ; 

__attribute__((used)) static void FUNC3(unsigned int cpu, bool remove)
{
	int nid = FUNC0(cpu);

	if (nid == NUMA_NO_NODE)
		return;

	if (remove)
		FUNC1(cpu, node_to_cpumask_map[nid]);
	else
		FUNC2(cpu, node_to_cpumask_map[nid]);
}