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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* cpu_to_node_map ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * node_to_cpu_mask ; 

void FUNC3(int cpu, int nid)
{
	FUNC0(!FUNC2(cpu, &node_to_cpu_mask[nid]));
	FUNC0(cpu_to_node_map[cpu] != nid);
	cpu_to_node_map[cpu] = 0;
	FUNC1(cpu, &node_to_cpu_mask[nid]);
}