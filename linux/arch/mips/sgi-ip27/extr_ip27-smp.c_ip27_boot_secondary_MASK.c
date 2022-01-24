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
typedef  int /*<<< orphan*/  launch_proc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  smp_bootstrap ; 
 scalar_t__ FUNC5 (struct task_struct*) ; 

__attribute__((used)) static int FUNC6(int cpu, struct task_struct *idle)
{
	unsigned long gp = (unsigned long)FUNC5(idle);
	unsigned long sp = FUNC2(idle);

	FUNC0(FUNC3(cpu), FUNC4(cpu),
		(launch_proc_t)FUNC1(smp_bootstrap),
		0, (void *) sp, (void *) gp);
	return 0;
}