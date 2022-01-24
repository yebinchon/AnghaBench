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
struct pt_regs {int /*<<< orphan*/  trap; int /*<<< orphan*/  msr; int /*<<< orphan*/  nip; } ;
typedef  enum ctx_state { ____Placeholder_ctx_state } ctx_state ;

/* Variables and functions */
 int /*<<< orphan*/  SIGTRAP ; 
 int /*<<< orphan*/  TRAP_UNK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pt_regs*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct pt_regs *regs)
{
	enum ctx_state prev_state = FUNC1();

	FUNC3("Bad trap at PC: %lx, SR: %lx, vector=%lx\n",
	       regs->nip, regs->msr, regs->trap);

	FUNC0(SIGTRAP, regs, TRAP_UNK, 0);

	FUNC2(prev_state);
}