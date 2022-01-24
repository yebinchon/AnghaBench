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
struct pt_regs {unsigned long ip; int /*<<< orphan*/  flags; } ;
struct kprobe_ctlblk {int /*<<< orphan*/  kprobe_status; } ;
struct TYPE_2__ {scalar_t__ insn; scalar_t__ boostable; } ;
struct kprobe {scalar_t__ opcode; TYPE_1__ ainsn; scalar_t__ addr; int /*<<< orphan*/  post_handler; } ;

/* Variables and functions */
 scalar_t__ BREAKPOINT_INSTRUCTION ; 
 int /*<<< orphan*/  KPROBE_HIT_SS ; 
 int /*<<< orphan*/  KPROBE_REENTER ; 
 int /*<<< orphan*/  X86_EFLAGS_IF ; 
 int /*<<< orphan*/  X86_EFLAGS_TF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct kprobe_ctlblk*) ; 
 int /*<<< orphan*/  FUNC3 (struct kprobe*,struct pt_regs*,struct kprobe_ctlblk*) ; 
 scalar_t__ FUNC4 (struct kprobe*,struct pt_regs*,int) ; 

__attribute__((used)) static void FUNC5(struct kprobe *p, struct pt_regs *regs,
			     struct kprobe_ctlblk *kcb, int reenter)
{
	if (FUNC4(p, regs, reenter))
		return;

#if !defined(CONFIG_PREEMPTION)
	if (p->ainsn.boostable && !p->post_handler) {
		/* Boost up -- we can execute copied instructions directly */
		if (!reenter)
			FUNC1();
		/*
		 * Reentering boosted probe doesn't reset current_kprobe,
		 * nor set current_kprobe, because it doesn't use single
		 * stepping.
		 */
		regs->ip = (unsigned long)p->ainsn.insn;
		return;
	}
#endif
	if (reenter) {
		FUNC2(kcb);
		FUNC3(p, regs, kcb);
		kcb->kprobe_status = KPROBE_REENTER;
	} else
		kcb->kprobe_status = KPROBE_HIT_SS;
	/* Prepare real single stepping */
	FUNC0();
	regs->flags |= X86_EFLAGS_TF;
	regs->flags &= ~X86_EFLAGS_IF;
	/* single step inline if the instruction is an int3 */
	if (p->opcode == BREAKPOINT_INSTRUCTION)
		regs->ip = (unsigned long)p->addr;
	else
		regs->ip = (unsigned long)p->ainsn.insn;
}