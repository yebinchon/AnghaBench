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
struct pt_regs {unsigned long ip; unsigned long sp; unsigned int cs; unsigned int ss; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  X86_BUG_NULL_SEG ; 
 int /*<<< orphan*/  X86_EFLAGS_IF ; 
 unsigned int __USER_DS ; 
 struct pt_regs* FUNC1 () ; 
 int /*<<< orphan*/  ds ; 
 int /*<<< orphan*/  es ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  fs ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct pt_regs *regs, unsigned long new_ip,
		    unsigned long new_sp,
		    unsigned int _cs, unsigned int _ss, unsigned int _ds)
{
	FUNC0(regs != FUNC1());

	if (FUNC5(X86_BUG_NULL_SEG)) {
		/* Loading zero below won't clear the base. */
		FUNC4(fs, __USER_DS);
		FUNC3(__USER_DS);
	}

	FUNC4(fs, 0);
	FUNC4(es, _ds);
	FUNC4(ds, _ds);
	FUNC3(0);

	regs->ip		= new_ip;
	regs->sp		= new_sp;
	regs->cs		= _cs;
	regs->ss		= _ss;
	regs->flags		= X86_EFLAGS_IF;
	FUNC2();
}