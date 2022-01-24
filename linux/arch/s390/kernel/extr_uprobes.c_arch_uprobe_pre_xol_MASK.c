#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  addr; } ;
struct pt_regs {TYPE_5__ psw; int /*<<< orphan*/  int_code; } ;
struct arch_uprobe {int /*<<< orphan*/  saved_int_code; int /*<<< orphan*/  saved_per; } ;
struct TYPE_9__ {scalar_t__ eaba; int /*<<< orphan*/  per; } ;
struct TYPE_8__ {TYPE_1__* utask; } ;
struct TYPE_7__ {int /*<<< orphan*/  xol_vaddr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PIF_PER_TRAP ; 
 scalar_t__ PSW_BITS_AMODE_24BIT ; 
 scalar_t__ PSW_BITS_AMODE_31BIT ; 
 int /*<<< orphan*/  TIF_UPROBE_SINGLESTEP ; 
 int /*<<< orphan*/  UPROBE_TRAP_NR ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*,int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_4__ FUNC2 (TYPE_5__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

int FUNC5(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
	if (FUNC2(regs->psw).eaba == PSW_BITS_AMODE_24BIT)
		return -EINVAL;
	if (!FUNC1() && FUNC2(regs->psw).eaba == PSW_BITS_AMODE_31BIT)
		return -EINVAL;
	FUNC0(regs, PIF_PER_TRAP);
	auprobe->saved_per = FUNC2(regs->psw).per;
	auprobe->saved_int_code = regs->int_code;
	regs->int_code = UPROBE_TRAP_NR;
	regs->psw.addr = current->utask->xol_vaddr;
	FUNC3(current, TIF_UPROBE_SINGLESTEP);
	FUNC4(current);
	return 0;
}