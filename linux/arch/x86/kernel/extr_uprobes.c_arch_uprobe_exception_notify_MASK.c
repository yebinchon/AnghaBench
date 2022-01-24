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
#define  DIE_DEBUG 129 
#define  DIE_INT3 128 
 int NOTIFY_DONE ; 
 int NOTIFY_STOP ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*) ; 

int FUNC3(struct notifier_block *self, unsigned long val, void *data)
{
	struct die_args *args = data;
	struct pt_regs *regs = args->regs;
	int ret = NOTIFY_DONE;

	/* We are only interested in userspace traps */
	if (regs && !FUNC2(regs))
		return NOTIFY_DONE;

	switch (val) {
	case DIE_INT3:
		if (FUNC1(regs))
			ret = NOTIFY_STOP;

		break;

	case DIE_DEBUG:
		if (FUNC0(regs))
			ret = NOTIFY_STOP;

	default:
		break;
	}

	return ret;
}