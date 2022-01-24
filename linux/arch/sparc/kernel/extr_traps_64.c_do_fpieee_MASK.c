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
typedef  enum ctx_state { ____Placeholder_ctx_state } ctx_state ;

/* Variables and functions */
 int /*<<< orphan*/  DIE_TRAP ; 
 scalar_t__ NOTIFY_STOP ; 
 int /*<<< orphan*/  SIGFPE ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,struct pt_regs*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC4(struct pt_regs *regs)
{
	enum ctx_state prev_state = FUNC1();

	if (FUNC3(DIE_TRAP, "fpu exception ieee", regs,
		       0, 0x24, SIGFPE) == NOTIFY_STOP)
		goto out;

	FUNC0(regs);
out:
	FUNC2(prev_state);
}