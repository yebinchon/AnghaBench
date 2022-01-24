#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned long addr; } ;
struct pt_regs {unsigned long* gprs; TYPE_1__ psw; } ;
struct kprobe_ctlblk {int dummy; } ;
struct TYPE_4__ {int* insn; scalar_t__ is_ftrace_insn; } ;
struct kprobe {TYPE_2__ ainsn; scalar_t__ addr; } ;
struct ftrace_insn {scalar_t__ disp; } ;

/* Variables and functions */
 int FIXUP_BRANCH_NOT_TAKEN ; 
 int FIXUP_PSW_NORMAL ; 
 int FIXUP_RETURN_REGISTER ; 
 scalar_t__ KPROBE_ON_FTRACE_CALL ; 
 int MCOUNT_INSN_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct kprobe_ctlblk*,struct pt_regs*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct ftrace_insn*,unsigned long) ; 
 struct kprobe_ctlblk* FUNC2 () ; 
 int FUNC3 (int) ; 
 int FUNC4 (int*) ; 

__attribute__((used)) static void FUNC5(struct kprobe *p, struct pt_regs *regs)
{
	struct kprobe_ctlblk *kcb = FUNC2();
	unsigned long ip = regs->psw.addr;
	int fixup = FUNC4(p->ainsn.insn);

	/* Check if the kprobes location is an enabled ftrace caller */
	if (p->ainsn.is_ftrace_insn) {
		struct ftrace_insn *insn = (struct ftrace_insn *) p->addr;
		struct ftrace_insn call_insn;

		FUNC1(&call_insn, (unsigned long) p->addr);
		/*
		 * A kprobe on an enabled ftrace call site actually single
		 * stepped an unconditional branch (ftrace nop equivalent).
		 * Now we need to fixup things and pretend that a brasl r0,...
		 * was executed instead.
		 */
		if (insn->disp == KPROBE_ON_FTRACE_CALL) {
			ip += call_insn.disp * 2 - MCOUNT_INSN_SIZE;
			regs->gprs[0] = (unsigned long)p->addr + sizeof(*insn);
		}
	}

	if (fixup & FIXUP_PSW_NORMAL)
		ip += (unsigned long) p->addr - (unsigned long) p->ainsn.insn;

	if (fixup & FIXUP_BRANCH_NOT_TAKEN) {
		int ilen = FUNC3(p->ainsn.insn[0] >> 8);
		if (ip - (unsigned long) p->ainsn.insn == ilen)
			ip = (unsigned long) p->addr + ilen;
	}

	if (fixup & FIXUP_RETURN_REGISTER) {
		int reg = (p->ainsn.insn[0] & 0xf0) >> 4;
		regs->gprs[reg] += (unsigned long) p->addr -
				   (unsigned long) p->ainsn.insn;
	}

	FUNC0(kcb, regs, ip);
}