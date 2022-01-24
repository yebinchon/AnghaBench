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
struct pt_regs {int /*<<< orphan*/  pc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AARCH64_INSN_SIZE ; 
#define  BUG_TRAP_TYPE_BUG 129 
#define  BUG_TRAP_TYPE_WARN 128 
 int DBG_HOOK_ERROR ; 
 int DBG_HOOK_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct pt_regs*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct pt_regs*) ; 

__attribute__((used)) static int FUNC3(struct pt_regs *regs, unsigned int esr)
{
	switch (FUNC2(regs->pc, regs)) {
	case BUG_TRAP_TYPE_BUG:
		FUNC1("Oops - BUG", regs, 0);
		break;

	case BUG_TRAP_TYPE_WARN:
		break;

	default:
		/* unknown/unrecognised bug trap type */
		return DBG_HOOK_ERROR;
	}

	/* If thread survives, skip over the BUG instruction and continue: */
	FUNC0(regs, AARCH64_INSN_SIZE);
	return DBG_HOOK_HANDLED;
}