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
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  smp_bootstrap ; 
 scalar_t__ FUNC4 (struct task_struct*) ; 

__attribute__((used)) static int FUNC5(int cpu, struct task_struct *idle)
{
	int retval;

	retval = FUNC1(FUNC2(cpu), &smp_bootstrap,
			       FUNC0(idle),
			       (unsigned long)FUNC4(idle), 0);
	if (retval != 0)
		FUNC3("cfe_start_cpu(%i) returned %i\n" , cpu, retval);
	return retval;
}