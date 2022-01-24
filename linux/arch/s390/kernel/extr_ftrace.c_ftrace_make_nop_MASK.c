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
struct module {int dummy; } ;
struct ftrace_insn {int dummy; } ;
struct dyn_ftrace {scalar_t__ ip; } ;
typedef  int /*<<< orphan*/  old ;
typedef  int /*<<< orphan*/  new ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 unsigned long MCOUNT_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct ftrace_insn*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ftrace_insn*) ; 
 int /*<<< orphan*/  FUNC2 (struct ftrace_insn*) ; 
 int /*<<< orphan*/  FUNC3 (struct ftrace_insn*) ; 
 int /*<<< orphan*/  FUNC4 (struct ftrace_insn*) ; 
 scalar_t__ FUNC5 (struct ftrace_insn*) ; 
 scalar_t__ FUNC6 (struct ftrace_insn*,struct ftrace_insn*,int) ; 
 scalar_t__ FUNC7 (struct ftrace_insn*,void*,int) ; 
 int /*<<< orphan*/  FUNC8 (void*,struct ftrace_insn*,int) ; 

int FUNC9(struct module *mod, struct dyn_ftrace *rec,
		    unsigned long addr)
{
	struct ftrace_insn orig, new, old;

	if (FUNC7(&old, (void *) rec->ip, sizeof(old)))
		return -EFAULT;
	if (addr == MCOUNT_ADDR) {
		/* Initial code replacement */
		FUNC4(&orig);
		FUNC3(&new);
	} else if (FUNC5(&old)) {
		/*
		 * If we find a breakpoint instruction, a kprobe has been
		 * placed at the beginning of the function. We write the
		 * constant KPROBE_ON_FTRACE_NOP into the remaining four
		 * bytes of the original instruction so that the kprobes
		 * handler can execute a nop, if it reaches this breakpoint.
		 */
		FUNC1(&orig);
		FUNC2(&new);
	} else {
		/* Replace ftrace call with a nop. */
		FUNC0(&orig, rec->ip);
		FUNC3(&new);
	}
	/* Verify that the to be replaced code matches what we expect. */
	if (FUNC6(&orig, &old, sizeof(old)))
		return -EINVAL;
	FUNC8((void *) rec->ip, &new, sizeof(new));
	return 0;
}