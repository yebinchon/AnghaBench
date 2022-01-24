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
struct TYPE_2__ {int /*<<< orphan*/  (* cpu_is_up ) (unsigned int,unsigned int) ;int /*<<< orphan*/  (* cluster_is_up ) (unsigned int) ;} ;

/* Variables and functions */
 int EUNATCH ; 
 unsigned int FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int FUNC5 (unsigned int) ; 
 int** mcpm_cpu_use_count ; 
 int /*<<< orphan*/  mcpm_lock ; 
 TYPE_1__* platform_ops ; 
 unsigned int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,unsigned int) ; 

int FUNC9(void)
{
	unsigned int mpidr, cpu, cluster;
	bool cpu_was_down, first_man;
	unsigned long flags;

	if (!platform_ops)
		return -EUNATCH;

	mpidr = FUNC6();
	cpu = FUNC0(mpidr, 0);
	cluster = FUNC0(mpidr, 1);
	FUNC4(flags);
	FUNC1(&mcpm_lock);

	cpu_was_down = !mcpm_cpu_use_count[cluster][cpu];
	first_man = FUNC5(cluster);

	if (first_man && platform_ops->cluster_is_up)
		platform_ops->cluster_is_up(cluster);
	if (cpu_was_down)
		mcpm_cpu_use_count[cluster][cpu] = 1;
	if (platform_ops->cpu_is_up)
		platform_ops->cpu_is_up(cpu, cluster);

	FUNC2(&mcpm_lock);
	FUNC3(flags);

	return 0;
}