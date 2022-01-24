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
struct task_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pgd; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,struct task_struct*) ; 
 int /*<<< orphan*/  cpu_running ; 
 int /*<<< orphan*/ * current_pgd ; 
 TYPE_1__ init_mm ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int /*<<< orphan*/  secondary_thread_info ; 
 int /*<<< orphan*/ * smp_cross_call ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC7(unsigned int cpu, struct task_struct *idle)
{
	if (smp_cross_call == NULL) {
		FUNC3("CPU%u: failed to start, IPI controller missing",
			cpu);
		return -EIO;
	}

	secondary_thread_info = FUNC5(idle);
	current_pgd[cpu] = init_mm.pgd;

	FUNC0(cpu, idle);
	if (!FUNC6(&cpu_running,
					FUNC1(1000))) {
		FUNC2("CPU%u: failed to start\n", cpu);
		return -EIO;
	}
	FUNC4(cpu);

	return 0;
}