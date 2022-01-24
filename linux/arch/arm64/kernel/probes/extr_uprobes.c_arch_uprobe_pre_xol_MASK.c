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
struct uprobe_task {int /*<<< orphan*/  xol_vaddr; } ;
struct pt_regs {int dummy; } ;
struct arch_uprobe {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  fault_code; } ;
struct TYPE_5__ {TYPE_1__ thread; struct uprobe_task* utask; } ;

/* Variables and functions */
 int /*<<< orphan*/  UPROBE_INV_FAULT_CODE ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

int FUNC2(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
	struct uprobe_task *utask = current->utask;

	/* Initialize with an invalid fault code to detect if ol insn trapped */
	current->thread.fault_code = UPROBE_INV_FAULT_CODE;

	/* Instruction points to execute ol */
	FUNC0(regs, utask->xol_vaddr);

	FUNC1(current);

	return 0;
}