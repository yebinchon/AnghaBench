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
struct cpulaunch {unsigned long pc; unsigned long gp; unsigned long sp; unsigned long a0; int flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CPULAUNCH ; 
 int LAUNCH_FGO ; 
 int LAUNCH_FGONE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(int cpu,
		    unsigned long pc, unsigned long sp,
		    unsigned long gp, unsigned long a0)
{
	volatile struct cpulaunch *launch =
		(struct cpulaunch  *)FUNC0(CPULAUNCH);

	if (!FUNC1(cpu))
		return -1;
	if (cpu == FUNC3()) {
		FUNC2("launch: I am cpu%d!\n", cpu);
		return -1;
	}
	launch += cpu;

	FUNC2("launch: starting cpu%d\n", cpu);

	launch->pc = pc;
	launch->gp = gp;
	launch->sp = sp;
	launch->a0 = a0;

	FUNC5();		/* Target must see parameters before go */
	launch->flags |= LAUNCH_FGO;
	FUNC5();		/* Target must see go before we poll  */

	while ((launch->flags & LAUNCH_FGONE) == 0)
		;
	FUNC4();	/* Target will be updating flags soon */
	FUNC2("launch: cpu%d gone!\n", cpu);

	return 0;
}