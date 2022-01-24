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
struct cpumask {int dummy; } ;
typedef  struct cpumask cpumask_t ;
struct TYPE_2__ {int llc_id; struct cpumask llc_sibling; struct cpumask core_sibling; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* cpu_topology ; 
 struct cpumask* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct cpumask*,struct cpumask const*) ; 

const struct cpumask *FUNC3(int cpu)
{
	const cpumask_t *core_mask = FUNC1(FUNC0(cpu));

	/* Find the smaller of NUMA, core or LLC siblings */
	if (FUNC2(&cpu_topology[cpu].core_sibling, core_mask)) {
		/* not numa in package, lets use the package siblings */
		core_mask = &cpu_topology[cpu].core_sibling;
	}
	if (cpu_topology[cpu].llc_id != -1) {
		if (FUNC2(&cpu_topology[cpu].llc_sibling, core_mask))
			core_mask = &cpu_topology[cpu].llc_sibling;
	}

	return core_mask;
}