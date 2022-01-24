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
struct TYPE_2__ {int /*<<< orphan*/  (* cpu_suspend_prepare ) (unsigned int,unsigned int) ;} ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  mcpm_lock ; 
 TYPE_1__* platform_ops ; 
 unsigned int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,unsigned int) ; 

void FUNC7(void)
{
	if (FUNC1(!platform_ops))
		return;

	/* Some platforms might have to enable special resume modes, etc. */
	if (platform_ops->cpu_suspend_prepare) {
		unsigned int mpidr = FUNC5();
		unsigned int cpu = FUNC0(mpidr, 0);
		unsigned int cluster = FUNC0(mpidr, 1); 
		FUNC2(&mcpm_lock);
		platform_ops->cpu_suspend_prepare(cpu, cluster);
		FUNC3(&mcpm_lock);
	}
	FUNC4();
}