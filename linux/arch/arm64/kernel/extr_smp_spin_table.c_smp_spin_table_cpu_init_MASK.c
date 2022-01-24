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
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/ * cpu_release_addr ; 
 struct device_node* FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 int FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 

__attribute__((used)) static int FUNC4(unsigned int cpu)
{
	struct device_node *dn;
	int ret;

	dn = FUNC0(cpu, NULL);
	if (!dn)
		return -ENODEV;

	/*
	 * Determine the address from which the CPU is polling.
	 */
	ret = FUNC2(dn, "cpu-release-addr",
				   &cpu_release_addr[cpu]);
	if (ret)
		FUNC3("CPU %d: missing or invalid cpu-release-addr property\n",
		       cpu);

	FUNC1(dn);

	return ret;
}