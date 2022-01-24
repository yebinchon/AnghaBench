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
struct TYPE_2__ {int /*<<< orphan*/ * regs; } ;
struct task_struct {TYPE_1__ thread; } ;

/* Variables and functions */
 int EIO ; 
 int PT_DSCR ; 
 int PT_MAX_PUT_REG ; 
 int PT_MSR ; 
 int PT_TRAP ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (struct task_struct*,unsigned long) ; 
 int FUNC2 (struct task_struct*,unsigned long) ; 
 int FUNC3 (struct task_struct*,unsigned long) ; 

int FUNC4(struct task_struct *task, int regno, unsigned long data)
{
	if (task->thread.regs == NULL)
		return -EIO;

	if (regno == PT_MSR)
		return FUNC2(task, data);
	if (regno == PT_TRAP)
		return FUNC3(task, data);
	if (regno == PT_DSCR)
		return FUNC1(task, data);

	if (regno <= PT_MAX_PUT_REG) {
		regno = FUNC0(regno, PT_MAX_PUT_REG + 1);
		((unsigned long *)task->thread.regs)[regno] = data;
		return 0;
	}
	return -EIO;
}