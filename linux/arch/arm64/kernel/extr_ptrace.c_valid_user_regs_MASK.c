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
struct user_pt_regs {int /*<<< orphan*/  pstate; } ;
struct task_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_SPSR_SS ; 
 int /*<<< orphan*/  TIF_SINGLESTEP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct user_pt_regs*) ; 
 int FUNC4 (struct user_pt_regs*) ; 

int FUNC5(struct user_pt_regs *regs, struct task_struct *task)
{
	if (!FUNC2(task, TIF_SINGLESTEP))
		regs->pstate &= ~DBG_SPSR_SS;

	if (FUNC0(FUNC1(task)))
		return FUNC3(regs);
	else
		return FUNC4(regs);
}