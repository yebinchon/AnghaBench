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
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct cpu {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MACHINE_HAS_TOPOLOGY ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  topology_cpu_attr_group ; 
 int /*<<< orphan*/  topology_extra_cpu_attr_group ; 

int FUNC2(struct cpu *cpu)
{
	int rc;

	rc = FUNC0(&cpu->dev.kobj, &topology_cpu_attr_group);
	if (rc || !MACHINE_HAS_TOPOLOGY)
		return rc;
	rc = FUNC0(&cpu->dev.kobj, &topology_extra_cpu_attr_group);
	if (rc)
		FUNC1(&cpu->dev.kobj, &topology_cpu_attr_group);
	return rc;
}