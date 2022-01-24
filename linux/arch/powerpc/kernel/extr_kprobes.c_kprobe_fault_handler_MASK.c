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
struct pt_regs {unsigned long nip; int /*<<< orphan*/  msr; } ;
struct kprobe_ctlblk {int kprobe_status; int /*<<< orphan*/  kprobe_saved_msr; } ;
struct kprobe {int /*<<< orphan*/  (* fault_handler ) (struct kprobe*,struct pt_regs*,int) ;scalar_t__ addr; } ;
struct exception_table_entry {int dummy; } ;

/* Variables and functions */
#define  KPROBE_HIT_ACTIVE 131 
#define  KPROBE_HIT_SS 130 
#define  KPROBE_HIT_SSDONE 129 
#define  KPROBE_REENTER 128 
 int /*<<< orphan*/  MSR_SINGLESTEP ; 
 unsigned long FUNC0 (struct exception_table_entry const*) ; 
 struct kprobe_ctlblk* FUNC1 () ; 
 struct kprobe* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct kprobe*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct kprobe_ctlblk*) ; 
 struct exception_table_entry* FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct kprobe*,struct pt_regs*,int) ; 

int FUNC9(struct pt_regs *regs, int trapnr)
{
	struct kprobe *cur = FUNC2();
	struct kprobe_ctlblk *kcb = FUNC1();
	const struct exception_table_entry *entry;

	switch(kcb->kprobe_status) {
	case KPROBE_HIT_SS:
	case KPROBE_REENTER:
		/*
		 * We are here because the instruction being single
		 * stepped caused a page fault. We reset the current
		 * kprobe and the nip points back to the probe address
		 * and allow the page fault handler to continue as a
		 * normal page fault.
		 */
		regs->nip = (unsigned long)cur->addr;
		regs->msr &= ~MSR_SINGLESTEP; /* Turn off 'trace' bits */
		regs->msr |= kcb->kprobe_saved_msr;
		if (kcb->kprobe_status == KPROBE_REENTER)
			FUNC6(kcb);
		else
			FUNC5();
		FUNC4();
		break;
	case KPROBE_HIT_ACTIVE:
	case KPROBE_HIT_SSDONE:
		/*
		 * We increment the nmissed count for accounting,
		 * we can also use npre/npostfault count for accounting
		 * these specific fault cases.
		 */
		FUNC3(cur);

		/*
		 * We come here because instructions in the pre/post
		 * handler caused the page_fault, this could happen
		 * if handler tries to access user space by
		 * copy_from_user(), get_user() etc. Let the
		 * user-specified handler try to fix it first.
		 */
		if (cur->fault_handler && cur->fault_handler(cur, regs, trapnr))
			return 1;

		/*
		 * In case the user-specified fault handler returned
		 * zero, try to fix up.
		 */
		if ((entry = FUNC7(regs->nip)) != NULL) {
			regs->nip = FUNC0(entry);
			return 1;
		}

		/*
		 * fixup_exception() could not handle it,
		 * Let do_page_fault() fix it.
		 */
		break;
	default:
		break;
	}
	return 0;
}