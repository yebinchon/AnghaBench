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
struct uprobe_task {int /*<<< orphan*/  vaddr; } ;
struct pt_regs {int dummy; } ;
struct arch_uprobe {int dummy; } ;
struct TYPE_2__ {struct uprobe_task* utask; } ;

/* Variables and functions */
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*,int /*<<< orphan*/ ) ; 

void FUNC1(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
	struct uprobe_task *utask = current->utask;

	FUNC0(regs, utask->vaddr);
}