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
struct notifier_block {int dummy; } ;
struct die_args {scalar_t__ regs; } ;

/* Variables and functions */
#define  DIE_BPT 129 
#define  DIE_SSTEP 128 
 int NOTIFY_DONE ; 
 int NOTIFY_STOP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

int FUNC3(struct notifier_block *self,
				 unsigned long val, void *data)
{
	int ret = NOTIFY_DONE;
	struct die_args *args = (struct die_args *)data;

	/* We are only interested in userspace traps */
	if (args->regs && !FUNC2(args->regs))
		return NOTIFY_DONE;

	switch (val) {
	case DIE_BPT:
		if (FUNC1(args->regs))
			ret = NOTIFY_STOP;
		break;

	case DIE_SSTEP:
		if (FUNC0(args->regs))
			ret = NOTIFY_STOP;

	default:
		break;
	}

	return ret;
}