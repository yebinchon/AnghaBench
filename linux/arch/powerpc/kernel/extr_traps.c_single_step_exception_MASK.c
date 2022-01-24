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
struct pt_regs {int /*<<< orphan*/  nip; } ;
typedef  enum ctx_state { ____Placeholder_ctx_state } ctx_state ;

/* Variables and functions */
 int /*<<< orphan*/  DIE_SSTEP ; 
 scalar_t__ NOTIFY_STOP ; 
 int /*<<< orphan*/  SIGTRAP ; 
 int /*<<< orphan*/  TRAP_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pt_regs*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*) ; 
 scalar_t__ FUNC3 (struct pt_regs*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (struct pt_regs*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,struct pt_regs*,int,int,int /*<<< orphan*/ ) ; 

void FUNC8(struct pt_regs *regs)
{
	enum ctx_state prev_state = FUNC4();

	FUNC2(regs);
	FUNC1(regs);

	if (FUNC6(regs))
		return;

	if (FUNC7(DIE_SSTEP, "single_step", regs, 5,
					5, SIGTRAP) == NOTIFY_STOP)
		goto bail;
	if (FUNC3(regs))
		goto bail;

	FUNC0(SIGTRAP, regs, TRAP_TRACE, regs->nip);

bail:
	FUNC5(prev_state);
}