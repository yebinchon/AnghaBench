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
struct task_struct {int /*<<< orphan*/  comm; } ;
struct pt_regs {int dummy; } ;
typedef  int /*<<< orphan*/  insn_size_t ;

/* Variables and functions */
 int UM_WARN ; 
 scalar_t__ FUNC0 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ se_kernmode_warn ; 
 int se_usermode ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 scalar_t__ FUNC3 (struct pt_regs*) ; 

void FUNC4(struct task_struct *tsk, insn_size_t insn,
			     struct pt_regs *regs)
{
	if (FUNC3(regs) && (se_usermode & UM_WARN))
		FUNC1("Fixing up unaligned userspace access "
			  "in \"%s\" pid=%d pc=0x%p ins=0x%04hx\n",
			  tsk->comm, FUNC2(tsk),
			  (void *)FUNC0(regs), insn);
	else if (se_kernmode_warn)
		FUNC1("Fixing up unaligned kernel access "
			  "in \"%s\" pid=%d pc=0x%p ins=0x%04hx\n",
			  tsk->comm, FUNC2(tsk),
			  (void *)FUNC0(regs), insn);
}