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
struct TYPE_2__ {int mask; } ;
struct pt_regs {TYPE_1__ psw; } ;
struct kprobe_ctlblk {scalar_t__ kprobe_status; } ;
struct kprobe {int /*<<< orphan*/  (* post_handler ) (struct kprobe*,struct pt_regs*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ KPROBE_HIT_SSDONE ; 
 scalar_t__ KPROBE_REENTER ; 
 int PSW_MASK_PER ; 
 struct kprobe_ctlblk* FUNC0 () ; 
 struct kprobe* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct kprobe_ctlblk*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct kprobe*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC5 (struct kprobe*,struct pt_regs*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pt_regs *regs)
{
	struct kprobe_ctlblk *kcb = FUNC0();
	struct kprobe *p = FUNC1();

	if (!p)
		return 0;

	if (kcb->kprobe_status != KPROBE_REENTER && p->post_handler) {
		kcb->kprobe_status = KPROBE_HIT_SSDONE;
		p->post_handler(p, regs, 0);
	}

	FUNC4(p, regs);
	FUNC2(kcb);
	FUNC3();

	/*
	 * if somebody else is singlestepping across a probe point, psw mask
	 * will have PER set, in which case, continue the remaining processing
	 * of do_single_step, as if this is not a probe hit.
	 */
	if (regs->psw.mask & PSW_MASK_PER)
		return 0;

	return 1;
}