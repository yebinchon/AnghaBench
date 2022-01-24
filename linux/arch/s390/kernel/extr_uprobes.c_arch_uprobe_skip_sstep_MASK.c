#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct pt_regs {TYPE_2__ psw; } ;
struct arch_uprobe {int /*<<< orphan*/  insn; } ;
struct TYPE_4__ {scalar_t__ eaba; } ;

/* Variables and functions */
 int /*<<< orphan*/  ILL_ILLADR ; 
 scalar_t__ PSW_BITS_AMODE_24BIT ; 
 scalar_t__ PSW_BITS_AMODE_31BIT ; 
 int /*<<< orphan*/  SIGILL ; 
 int /*<<< orphan*/  UPROBE_SWBP_INSN_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct arch_uprobe*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC5 (TYPE_2__) ; 

bool FUNC6(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
	if ((FUNC5(regs->psw).eaba == PSW_BITS_AMODE_24BIT) ||
	    ((FUNC5(regs->psw).eaba == PSW_BITS_AMODE_31BIT) &&
	     !FUNC3())) {
		regs->psw.addr = FUNC0(regs->psw, UPROBE_SWBP_INSN_SIZE);
		FUNC1(regs, SIGILL, ILL_ILLADR, NULL);
		return true;
	}
	if (FUNC4(auprobe->insn)) {
		FUNC2(auprobe, regs);
		return true;
	}
	return false;
}