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
struct TYPE_4__ {int addr; } ;
struct pt_regs {TYPE_2__ psw; } ;
struct kprobe_ctlblk {int /*<<< orphan*/  kprobe_status; } ;
struct TYPE_3__ {scalar_t__ insn; } ;
struct kprobe {TYPE_1__ ainsn; scalar_t__ (* pre_handler ) (struct kprobe*,struct pt_regs*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  KPROBE_HIT_ACTIVE ; 
 int /*<<< orphan*/  KPROBE_HIT_SS ; 
 int /*<<< orphan*/  KPROBE_REENTER ; 
 int /*<<< orphan*/  FUNC0 (struct kprobe_ctlblk*,struct pt_regs*,unsigned long) ; 
 struct kprobe* FUNC1 (void*) ; 
 struct kprobe_ctlblk* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct kprobe_ctlblk*,struct kprobe*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct kprobe_ctlblk*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct kprobe_ctlblk*,struct kprobe*) ; 
 scalar_t__ FUNC9 (struct kprobe*,struct pt_regs*) ; 

__attribute__((used)) static int FUNC10(struct pt_regs *regs)
{
	struct kprobe_ctlblk *kcb;
	struct kprobe *p;

	/*
	 * We want to disable preemption for the entire duration of kprobe
	 * processing. That includes the calls to the pre/post handlers
	 * and single stepping the kprobe instruction.
	 */
	FUNC6();
	kcb = FUNC2();
	p = FUNC1((void *)(regs->psw.addr - 2));

	if (p) {
		if (FUNC4()) {
			/*
			 * We have hit a kprobe while another is still
			 * active. This can happen in the pre and post
			 * handler. Single step the instruction of the
			 * new probe but do not call any handler function
			 * of this secondary kprobe.
			 * push_kprobe and pop_kprobe saves and restores
			 * the currently active kprobe.
			 */
			FUNC3(kcb, p);
			FUNC8(kcb, p);
			kcb->kprobe_status = KPROBE_REENTER;
		} else {
			/*
			 * If we have no pre-handler or it returned 0, we
			 * continue with single stepping. If we have a
			 * pre-handler and it returned non-zero, it prepped
			 * for changing execution path, so get out doing
			 * nothing more here.
			 */
			FUNC8(kcb, p);
			kcb->kprobe_status = KPROBE_HIT_ACTIVE;
			if (p->pre_handler && p->pre_handler(p, regs)) {
				FUNC5(kcb);
				FUNC7();
				return 1;
			}
			kcb->kprobe_status = KPROBE_HIT_SS;
		}
		FUNC0(kcb, regs, (unsigned long) p->ainsn.insn);
		return 1;
	} /* else:
	   * No kprobe at this address and no active kprobe. The trap has
	   * not been caused by a kprobe breakpoint. The race of breakpoint
	   * vs. kprobe remove does not exist because on s390 as we use
	   * stop_machine to arm/disarm the breakpoints.
	   */
	FUNC7();
	return 0;
}