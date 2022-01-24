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
struct unwind_state {int dummy; } ;
struct pt_regs {unsigned long ip; unsigned long sp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONFIG_X86_32 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct unwind_state*,unsigned long,int) ; 

__attribute__((used)) static bool FUNC3(struct unwind_state *state, unsigned long addr,
			     unsigned long *ip, unsigned long *sp)
{
	struct pt_regs *regs = (struct pt_regs *)addr;

	/* x86-32 support will be more complicated due to the &regs->sp hack */
	FUNC0(FUNC1(CONFIG_X86_32));

	if (!FUNC2(state, addr, sizeof(struct pt_regs)))
		return false;

	*ip = regs->ip;
	*sp = regs->sp;
	return true;
}