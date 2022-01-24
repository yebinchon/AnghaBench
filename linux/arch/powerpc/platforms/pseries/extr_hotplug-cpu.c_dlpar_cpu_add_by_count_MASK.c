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
typedef  int u32 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int*,int) ; 
 int* FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static int FUNC7(u32 cpus_to_add)
{
	u32 *cpu_drcs;
	int cpus_added = 0;
	int cpus_found;
	int i, rc;

	FUNC5("Attempting to hot-add %d CPUs\n", cpus_to_add);

	cpu_drcs = FUNC3(cpus_to_add, sizeof(*cpu_drcs), GFP_KERNEL);
	if (!cpu_drcs)
		return -EINVAL;

	cpus_found = FUNC2(cpu_drcs, cpus_to_add);
	if (cpus_found < cpus_to_add) {
		FUNC6("Failed to find enough CPUs (%d of %d) to add\n",
			cpus_found, cpus_to_add);
		FUNC4(cpu_drcs);
		return -EINVAL;
	}

	for (i = 0; i < cpus_to_add; i++) {
		rc = FUNC0(cpu_drcs[i]);
		if (rc)
			break;

		cpus_added++;
	}

	if (cpus_added < cpus_to_add) {
		FUNC6("CPU hot-add failed, removing any added CPUs\n");

		for (i = 0; i < cpus_added; i++)
			FUNC1(cpu_drcs[i]);

		rc = -EINVAL;
	} else {
		rc = 0;
	}

	FUNC4(cpu_drcs);
	return rc;
}