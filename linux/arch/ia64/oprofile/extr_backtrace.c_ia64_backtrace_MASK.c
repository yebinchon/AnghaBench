#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int dummy; } ;
struct TYPE_3__ {unsigned int depth; int /*<<< orphan*/ * prev_pfs_loc; struct pt_regs* regs; } ;
typedef  TYPE_1__ ia64_backtrace_t ;

/* Variables and functions */
 int /*<<< orphan*/  do_ia64_backtrace ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (struct pt_regs* const) ; 

void
FUNC4(struct pt_regs * const regs, unsigned int depth)
{
	ia64_backtrace_t bt;
	unsigned long flags;

	/*
	 * On IA64 there is little hope of getting backtraces from
	 * user space programs -- the problems of getting the unwind
	 * information from arbitrary user programs are extreme.
	 */
	if (FUNC3(regs))
		return;

	bt.depth = depth;
	bt.regs = regs;
	bt.prev_pfs_loc = NULL;
	FUNC1(flags);
	FUNC2(do_ia64_backtrace, &bt);
	FUNC0(flags);
}