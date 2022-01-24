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
struct uprobe_task {scalar_t__ vaddr; } ;
struct pt_regs {int dummy; } ;
struct arch_uprobe {int dummy; } ;
struct TYPE_4__ {scalar_t__ fault_code; } ;
struct TYPE_5__ {TYPE_1__ thread; struct uprobe_task* utask; } ;

/* Variables and functions */
 scalar_t__ UPROBE_INV_FAULT_CODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

int FUNC3(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
	struct uprobe_task *utask = current->utask;

	FUNC0(current->thread.fault_code != UPROBE_INV_FAULT_CODE);

	/* Instruction points to execute next to breakpoint address */
	FUNC1(regs, utask->vaddr + 4);

	FUNC2(current);

	return 0;
}