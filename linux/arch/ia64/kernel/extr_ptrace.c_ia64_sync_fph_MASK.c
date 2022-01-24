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
struct TYPE_2__ {int flags; int /*<<< orphan*/  fph; } ;
struct task_struct {TYPE_1__ thread; } ;
struct ia64_psr {int dfh; } ;

/* Variables and functions */
 int IA64_THREAD_FPH_VALID ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 struct ia64_psr* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 

void
FUNC5 (struct task_struct *task)
{
	struct ia64_psr *psr = FUNC2(FUNC4(task));

	FUNC1(task);
	if (!(task->thread.flags & IA64_THREAD_FPH_VALID)) {
		task->thread.flags |= IA64_THREAD_FPH_VALID;
		FUNC3(&task->thread.fph, 0, sizeof(task->thread.fph));
	}
	FUNC0(task);
	psr->dfh = 1;
}