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
struct pt_regs {unsigned long ip; } ;
struct TYPE_2__ {unsigned long ilen; scalar_t__ offs; } ;
struct arch_uprobe {TYPE_1__ branch; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct arch_uprobe*) ; 
 int /*<<< orphan*/  FUNC1 (struct arch_uprobe*,struct pt_regs*) ; 
 scalar_t__ FUNC2 (struct pt_regs*,unsigned long) ; 

__attribute__((used)) static bool FUNC3(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
	unsigned long new_ip = regs->ip += auprobe->branch.ilen;
	unsigned long offs = (long)auprobe->branch.offs;

	if (FUNC0(auprobe)) {
		/*
		 * If it fails we execute this (mangled, see the comment in
		 * branch_clear_offset) insn out-of-line. In the likely case
		 * this should trigger the trap, and the probed application
		 * should die or restart the same insn after it handles the
		 * signal, arch_uprobe_post_xol() won't be even called.
		 *
		 * But there is corner case, see the comment in ->post_xol().
		 */
		if (FUNC2(regs, new_ip))
			return false;
	} else if (!FUNC1(auprobe, regs)) {
		offs = 0;
	}

	regs->ip = new_ip + offs;
	return true;
}