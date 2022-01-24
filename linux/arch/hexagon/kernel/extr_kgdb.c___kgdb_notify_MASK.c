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
struct die_args {int trapnr; int /*<<< orphan*/  regs; int /*<<< orphan*/  err; int /*<<< orphan*/  signr; } ;

/* Variables and functions */
 int NOTIFY_DONE ; 
 int NOTIFY_STOP ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kgdb_active ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct die_args *args, unsigned long cmd)
{
	/* cpu roundup */
	if (FUNC0(&kgdb_active) != -1) {
		FUNC2(FUNC3(), args->regs);
		return NOTIFY_STOP;
	}

	if (FUNC4(args->regs))
		return NOTIFY_DONE;

	if (FUNC1(args->trapnr & 0xff, args->signr, args->err,
				    args->regs))
		return NOTIFY_DONE;

	return NOTIFY_STOP;
}