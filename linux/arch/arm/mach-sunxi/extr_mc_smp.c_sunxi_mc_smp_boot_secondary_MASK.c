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
struct task_struct {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 unsigned int FUNC0 (unsigned int,int) ; 
 unsigned int SUNXI_CPUS_PER_CLUSTER ; 
 unsigned int SUNXI_NR_CLUSTERS ; 
 int /*<<< orphan*/  boot_lock ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  cpucfg_base ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC6 (unsigned int) ; 
 scalar_t__** sunxi_mc_smp_cpu_table ; 
 int sunxi_mc_smp_first_comer ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 

__attribute__((used)) static int FUNC8(unsigned int l_cpu, struct task_struct *idle)
{
	unsigned int mpidr, cpu, cluster;

	mpidr = FUNC1(l_cpu);
	cpu = FUNC0(mpidr, 0);
	cluster = FUNC0(mpidr, 1);

	if (!cpucfg_base)
		return -ENODEV;
	if (cluster >= SUNXI_NR_CLUSTERS || cpu >= SUNXI_CPUS_PER_CLUSTER)
		return -EINVAL;

	FUNC2(&boot_lock);

	if (sunxi_mc_smp_cpu_table[cluster][cpu])
		goto out;

	if (FUNC6(cluster)) {
		sunxi_mc_smp_first_comer = true;
		FUNC4(cluster);
	} else {
		sunxi_mc_smp_first_comer = false;
	}

	/* This is read by incoming CPUs with their cache and MMU disabled */
	FUNC7(&sunxi_mc_smp_first_comer);
	FUNC5(cpu, cluster);

out:
	sunxi_mc_smp_cpu_table[cluster][cpu]++;
	FUNC3(&boot_lock);

	return 0;
}