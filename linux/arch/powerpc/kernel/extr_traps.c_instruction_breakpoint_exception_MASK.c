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
 int /*<<< orphan*/  DIE_IABR_MATCH ; 
 scalar_t__ NOTIFY_STOP ; 
 int /*<<< orphan*/  SIGTRAP ; 
 int /*<<< orphan*/  TRAP_BRKPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pt_regs*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct pt_regs*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,struct pt_regs*,int,int,int /*<<< orphan*/ ) ; 

void FUNC5(struct pt_regs *regs)
{
	enum ctx_state prev_state = FUNC2();

	if (FUNC4(DIE_IABR_MATCH, "iabr_match", regs, 5,
					5, SIGTRAP) == NOTIFY_STOP)
		goto bail;
	if (FUNC1(regs))
		goto bail;
	FUNC0(SIGTRAP, regs, TRAP_BRKPT, regs->nip);

bail:
	FUNC3(prev_state);
}