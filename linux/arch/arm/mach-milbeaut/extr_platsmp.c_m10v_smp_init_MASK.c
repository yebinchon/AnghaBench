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
 int /*<<< orphan*/  KERNEL_UNBOOT_FLAG ; 
 unsigned int M10V_MAX_CPU ; 
 unsigned int FUNC0 (unsigned int,int) ; 
 scalar_t__ m10v_smp_base ; 
 struct device_node* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,unsigned int) ; 
 unsigned int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(unsigned int max_cpus)
{
	unsigned int mpidr, cpu, cluster;
	struct device_node *np;

	np = FUNC1(NULL, NULL, "socionext,milbeaut-smp-sram");
	if (!np)
		return;

	m10v_smp_base = FUNC2(np, 0);
	if (!m10v_smp_base)
		return;

	mpidr = FUNC4();
	cpu = FUNC0(mpidr, 0);
	cluster = FUNC0(mpidr, 1);
	FUNC3("MCPM boot on cpu_%u cluster_%u\n", cpu, cluster);

	for (cpu = 0; cpu < M10V_MAX_CPU; cpu++)
		FUNC5(KERNEL_UNBOOT_FLAG, m10v_smp_base + cpu * 4);
}