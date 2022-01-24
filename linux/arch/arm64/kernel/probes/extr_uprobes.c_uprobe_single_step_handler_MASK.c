#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct uprobe_task {scalar_t__ xol_vaddr; } ;
struct pt_regs {int dummy; } ;
struct TYPE_2__ {struct uprobe_task* utask; } ;

/* Variables and functions */
 int DBG_HOOK_ERROR ; 
 int DBG_HOOK_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 scalar_t__ FUNC1 (struct pt_regs*) ; 
 scalar_t__ FUNC2 (struct pt_regs*) ; 

__attribute__((used)) static int FUNC3(struct pt_regs *regs,
		unsigned int esr)
{
	struct uprobe_task *utask = current->utask;

	FUNC0(utask && (FUNC1(regs) != utask->xol_vaddr + 4));
	if (FUNC2(regs))
		return DBG_HOOK_HANDLED;

	return DBG_HOOK_ERROR;
}