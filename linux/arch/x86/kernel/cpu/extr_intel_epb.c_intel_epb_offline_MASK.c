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
struct device {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpuhp_tasks_frozen ; 
 struct device* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  intel_epb_attr_group ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(unsigned int cpu)
{
	struct device *cpu_dev = FUNC0(cpu);

	if (!cpuhp_tasks_frozen)
		FUNC2(&cpu_dev->kobj, &intel_epb_attr_group);

	FUNC1();
	return 0;
}