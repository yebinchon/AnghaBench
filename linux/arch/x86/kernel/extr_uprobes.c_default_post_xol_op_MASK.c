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
struct TYPE_4__ {int saved_tf; } ;
struct uprobe_task {long vaddr; long xol_vaddr; TYPE_1__ autask; } ;
struct pt_regs {long ip; int /*<<< orphan*/  sp; } ;
struct TYPE_5__ {int fixups; long ilen; } ;
struct arch_uprobe {TYPE_2__ defparam; } ;
struct TYPE_6__ {struct uprobe_task* utask; } ;

/* Variables and functions */
 int ERESTART ; 
 int UPROBE_FIX_CALL ; 
 int UPROBE_FIX_IP ; 
 int UPROBE_FIX_SETF ; 
 TYPE_3__* current ; 
 scalar_t__ FUNC0 (struct pt_regs*,long) ; 
 int /*<<< orphan*/  FUNC1 (struct arch_uprobe*,struct pt_regs*) ; 
 scalar_t__ FUNC2 (struct pt_regs*) ; 

__attribute__((used)) static int FUNC3(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
	struct uprobe_task *utask = current->utask;

	FUNC1(auprobe, regs);
	if (auprobe->defparam.fixups & UPROBE_FIX_IP) {
		long correction = utask->vaddr - utask->xol_vaddr;
		regs->ip += correction;
	} else if (auprobe->defparam.fixups & UPROBE_FIX_CALL) {
		regs->sp += FUNC2(regs); /* Pop incorrect return address */
		if (FUNC0(regs, utask->vaddr + auprobe->defparam.ilen))
			return -ERESTART;
	}
	/* popf; tell the caller to not touch TF */
	if (auprobe->defparam.fixups & UPROBE_FIX_SETF)
		utask->autask.saved_tf = true;

	return 0;
}