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
struct notifier_block {int dummy; } ;
struct die_args {int /*<<< orphan*/  trapnr; struct pt_regs* regs; } ;

/* Variables and functions */
#define  DIE_BPT 130 
#define  DIE_SSTEP 129 
#define  DIE_TRAP 128 
 int NOTIFY_DONE ; 
 int NOTIFY_STOP ; 
 int PSW_MASK_EXT ; 
 int PSW_MASK_IO ; 
 int PSW_MASK_PER ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(struct notifier_block *self,
			     unsigned long val, void *data)
{
	struct die_args *args = (struct die_args *) data;
	struct pt_regs *regs = args->regs;
	int ret = NOTIFY_DONE;

	if (regs->psw.mask & (PSW_MASK_IO | PSW_MASK_EXT))
		FUNC3();

	switch (val) {
	case DIE_BPT:
		if (FUNC0(regs))
			ret = NOTIFY_STOP;
		break;
	case DIE_SSTEP:
		if (FUNC5(regs))
			ret = NOTIFY_STOP;
		break;
	case DIE_TRAP:
		if (!FUNC6() && FUNC1() &&
		    FUNC2(regs, args->trapnr))
			ret = NOTIFY_STOP;
		break;
	default:
		break;
	}

	if (regs->psw.mask & (PSW_MASK_IO | PSW_MASK_EXT))
		FUNC4(regs->psw.mask & ~PSW_MASK_PER);

	return ret;
}