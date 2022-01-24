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
struct TYPE_2__ {scalar_t__ xstate; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {int /*<<< orphan*/  sr; } ;

/* Variables and functions */
 int /*<<< orphan*/  SR_FD ; 
 int THREAD_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 struct task_struct* last_task_used_math ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 

__attribute__((used)) static inline int
FUNC5(struct task_struct *task, unsigned long addr, unsigned long data)
{
	struct pt_regs *regs;

	regs = (struct pt_regs*)((unsigned char *)task + THREAD_SIZE) - 1;

	if (!FUNC4(task)) {
		FUNC2(task);
	} else if (last_task_used_math == task) {
		FUNC1();
		FUNC3(task);
		FUNC0();
		last_task_used_math = 0;
		regs->sr |= SR_FD;
	}

	((long *)task->thread.xstate)[addr / sizeof(unsigned long)] = data;
	return 0;
}