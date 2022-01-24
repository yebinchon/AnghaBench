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
struct pt_regs {int dummy; } ;
struct mce {int inject_flags; scalar_t__ status; } ;

/* Variables and functions */
 int MCJ_EXCEPTION ; 
 int NMI_DONE ; 
 int NMI_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  injectm ; 
 int /*<<< orphan*/  mce_inject_cpumask ; 
 int /*<<< orphan*/  FUNC2 (struct mce*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 (struct mce*) ; 
 int FUNC4 () ; 
 struct mce* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(unsigned int cmd, struct pt_regs *regs)
{
	int cpu = FUNC4();
	struct mce *m = FUNC5(&injectm);
	if (!FUNC1(cpu, mce_inject_cpumask))
		return NMI_DONE;
	FUNC0(cpu, mce_inject_cpumask);
	if (m->inject_flags & MCJ_EXCEPTION)
		FUNC2(m, regs);
	else if (m->status)
		FUNC3(m);
	return NMI_HANDLED;
}