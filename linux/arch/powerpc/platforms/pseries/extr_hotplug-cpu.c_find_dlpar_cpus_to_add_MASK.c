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
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device_node*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 struct device_node* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int FUNC4 (struct device_node*,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(u32 *cpu_drcs, u32 cpus_to_add)
{
	struct device_node *parent;
	int cpus_found = 0;
	int index, rc;

	parent = FUNC2("/cpus");
	if (!parent) {
		FUNC5("Could not find CPU root node in device tree\n");
		FUNC1(cpu_drcs);
		return -1;
	}

	/* Search the ibm,drc-indexes array for possible CPU drcs to
	 * add. Note that the format of the ibm,drc-indexes array is
	 * the number of entries in the array followed by the array
	 * of drc values so we start looking at index = 1.
	 */
	index = 1;
	while (cpus_found < cpus_to_add) {
		u32 drc;

		rc = FUNC4(parent, "ibm,drc-indexes",
						index++, &drc);
		if (rc)
			break;

		if (FUNC0(parent, drc))
			continue;

		cpu_drcs[cpus_found++] = drc;
	}

	FUNC3(parent);
	return cpus_found;
}