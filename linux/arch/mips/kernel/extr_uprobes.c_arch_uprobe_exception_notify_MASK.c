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
struct pt_regs {int dummy; } ;
struct notifier_block {int dummy; } ;
struct die_args {struct pt_regs* regs; } ;

/* Variables and functions */
#define  DIE_UPROBE 129 
#define  DIE_UPROBE_XOL 128 
 int NOTIFY_DONE ; 
 int NOTIFY_STOP ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*) ; 

int FUNC4(struct notifier_block *self,
	unsigned long val, void *data)
{
	struct die_args *args = data;
	struct pt_regs *regs = args->regs;

	/* regs == NULL is a kernel bug */
	if (FUNC0(!regs))
		return NOTIFY_DONE;

	/* We are only interested in userspace traps */
	if (!FUNC3(regs))
		return NOTIFY_DONE;

	switch (val) {
	case DIE_UPROBE:
		if (FUNC2(regs))
			return NOTIFY_STOP;
		break;
	case DIE_UPROBE_XOL:
		if (FUNC1(regs))
			return NOTIFY_STOP;
	default:
		break;
	}

	return 0;
}