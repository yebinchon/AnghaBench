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
struct pt_regs {int /*<<< orphan*/  ARM_pc; } ;
typedef  enum bug_trap_type { ____Placeholder_bug_trap_type } bug_trap_type ;

/* Variables and functions */
 int BUG_TRAP_TYPE_NONE ; 
 int SIGSEGV ; 
 scalar_t__ FUNC0 (char const*,int,struct pt_regs*) ; 
 unsigned long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,struct pt_regs*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*) ; 

void FUNC5(const char *str, struct pt_regs *regs, int err)
{
	enum bug_trap_type bug_type = BUG_TRAP_TYPE_NONE;
	unsigned long flags = FUNC1();
	int sig = SIGSEGV;

	if (!FUNC4(regs))
		bug_type = FUNC3(regs->ARM_pc, regs);
	if (bug_type != BUG_TRAP_TYPE_NONE)
		str = "Oops - BUG";

	if (FUNC0(str, err, regs))
		sig = 0;

	FUNC2(flags, regs, sig);
}