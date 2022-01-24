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
struct die_args {int /*<<< orphan*/  signr; int /*<<< orphan*/  trapnr; struct pt_regs* regs; } ;

/* Variables and functions */
#define  DIE_DEBUG 128 
 int NOTIFY_DONE ; 
 int NOTIFY_STOP ; 
 int /*<<< orphan*/  TIF_SINGLESTEP ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kgdb_cpu_doing_single_step ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,struct pt_regs*) ; 
 int FUNC2 (struct pt_regs*,struct die_args*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct pt_regs*) ; 

__attribute__((used)) static int FUNC6(struct die_args *args, unsigned long cmd)
{
	struct pt_regs *regs = args->regs;

	switch (cmd) {
	case DIE_DEBUG:
		if (FUNC0(&kgdb_cpu_doing_single_step) != -1) {
			if (FUNC5(regs))
				return FUNC2(regs, args);
			break;
		} else if (FUNC3(TIF_SINGLESTEP))
			/* This means a user thread is single stepping
			 * a system call which should be ignored
			 */
			return NOTIFY_DONE;
		/* fall through */
	default:
		if (FUNC5(regs))
			return NOTIFY_DONE;
	}

	if (FUNC1(args->trapnr, args->signr, cmd, regs))
		return NOTIFY_DONE;

	/* Must touch watchdog before return to normal operation */
	FUNC4();
	return NOTIFY_STOP;
}