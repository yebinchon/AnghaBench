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
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cstate_core_cpu_mask ; 
 int /*<<< orphan*/  cstate_core_pmu ; 
 int /*<<< orphan*/  cstate_pkg_cpu_mask ; 
 int /*<<< orphan*/  cstate_pkg_pmu ; 
 scalar_t__ has_cstate_core ; 
 scalar_t__ has_cstate_pkg ; 
 unsigned int nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 

__attribute__((used)) static int FUNC6(unsigned int cpu)
{
	unsigned int target;

	if (has_cstate_core &&
	    FUNC2(cpu, &cstate_core_cpu_mask)) {

		target = FUNC0(FUNC5(cpu), cpu);
		/* Migrate events if there is a valid target */
		if (target < nr_cpu_ids) {
			FUNC1(target, &cstate_core_cpu_mask);
			FUNC3(&cstate_core_pmu, cpu, target);
		}
	}

	if (has_cstate_pkg &&
	    FUNC2(cpu, &cstate_pkg_cpu_mask)) {

		target = FUNC0(FUNC4(cpu), cpu);
		/* Migrate events if there is a valid target */
		if (target < nr_cpu_ids) {
			FUNC1(target, &cstate_pkg_cpu_mask);
			FUNC3(&cstate_pkg_pmu, cpu, target);
		}
	}
	return 0;
}