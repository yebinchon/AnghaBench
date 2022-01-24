#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  saved_trap_no; } ;
struct uprobe_task {int /*<<< orphan*/  vaddr; TYPE_2__ autask; } ;
struct pt_regs {int dummy; } ;
struct arch_uprobe {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  trap_no; } ;
struct TYPE_6__ {TYPE_1__ thread; struct uprobe_task* utask; } ;

/* Variables and functions */
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*,int /*<<< orphan*/ ) ; 

void FUNC1(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
	struct uprobe_task *utask = current->utask;

	current->thread.trap_no = utask->autask.saved_trap_no;
	FUNC0(regs, utask->vaddr);
}