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
struct cpu_topology {int /*<<< orphan*/  thread_sibling; int /*<<< orphan*/  core_sibling; int /*<<< orphan*/  llc_sibling; } ;

/* Variables and functions */
 struct cpu_topology* cpu_topology ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(int cpu)
{
	struct cpu_topology *cpu_topo = &cpu_topology[cpu];

	FUNC0(&cpu_topo->llc_sibling);
	FUNC1(cpu, &cpu_topo->llc_sibling);

	FUNC0(&cpu_topo->core_sibling);
	FUNC1(cpu, &cpu_topo->core_sibling);
	FUNC0(&cpu_topo->thread_sibling);
	FUNC1(cpu, &cpu_topo->thread_sibling);
}