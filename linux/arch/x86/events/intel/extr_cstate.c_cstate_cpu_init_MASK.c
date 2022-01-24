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
 unsigned int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cstate_core_cpu_mask ; 
 int /*<<< orphan*/  cstate_pkg_cpu_mask ; 
 scalar_t__ has_cstate_core ; 
 scalar_t__ has_cstate_pkg ; 
 unsigned int nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 

__attribute__((used)) static int FUNC4(unsigned int cpu)
{
	unsigned int target;

	/*
	 * If this is the first online thread of that core, set it in
	 * the core cpu mask as the designated reader.
	 */
	target = FUNC0(&cstate_core_cpu_mask,
				 FUNC3(cpu));

	if (has_cstate_core && target >= nr_cpu_ids)
		FUNC1(cpu, &cstate_core_cpu_mask);

	/*
	 * If this is the first online thread of that package, set it
	 * in the package cpu mask as the designated reader.
	 */
	target = FUNC0(&cstate_pkg_cpu_mask,
				 FUNC2(cpu));
	if (has_cstate_pkg && target >= nr_cpu_ids)
		FUNC1(cpu, &cstate_pkg_cpu_mask);

	return 0;
}