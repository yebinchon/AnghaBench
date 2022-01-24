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
struct pt_regs {unsigned long nip; int msr; } ;
struct kprobe_ctlblk {scalar_t__ kprobe_status; int kprobe_saved_msr; } ;
struct TYPE_2__ {scalar_t__ insn; } ;
struct kprobe {scalar_t__ addr; int /*<<< orphan*/  (* post_handler ) (struct kprobe*,struct pt_regs*,int /*<<< orphan*/ ) ;TYPE_1__ ainsn; } ;

/* Variables and functions */
 scalar_t__ KPROBE_HIT_SSDONE ; 
 scalar_t__ KPROBE_REENTER ; 
 int MSR_SINGLESTEP ; 
 struct kprobe_ctlblk* FUNC0 () ; 
 struct kprobe* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct kprobe_ctlblk*) ; 
 int /*<<< orphan*/  FUNC5 (struct kprobe*,struct pt_regs*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct pt_regs*) ; 

int FUNC7(struct pt_regs *regs)
{
	struct kprobe *cur = FUNC1();
	struct kprobe_ctlblk *kcb = FUNC0();

	if (!cur || FUNC6(regs))
		return 0;

	/* make sure we got here for instruction we have a kprobe on */
	if (((unsigned long)cur->ainsn.insn + 4) != regs->nip)
		return 0;

	if ((kcb->kprobe_status != KPROBE_REENTER) && cur->post_handler) {
		kcb->kprobe_status = KPROBE_HIT_SSDONE;
		cur->post_handler(cur, regs, 0);
	}

	/* Adjust nip to after the single-stepped instruction */
	regs->nip = (unsigned long)cur->addr + 4;
	regs->msr |= kcb->kprobe_saved_msr;

	/*Restore back the original saved kprobes variables and continue. */
	if (kcb->kprobe_status == KPROBE_REENTER) {
		FUNC4(kcb);
		goto out;
	}
	FUNC3();
out:
	FUNC2();

	/*
	 * if somebody else is singlestepping across a probe point, msr
	 * will have DE/SE set, in which case, continue the remaining processing
	 * of do_debug, as if this is not a probe hit.
	 */
	if (regs->msr & MSR_SINGLESTEP)
		return 0;

	return 1;
}