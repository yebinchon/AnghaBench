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
struct TYPE_2__ {int /*<<< orphan*/ * fph; int /*<<< orphan*/  flags; } ;
struct task_struct {TYPE_1__ thread; } ;
struct ia64_psr {scalar_t__ mfh; } ;

/* Variables and functions */
 int /*<<< orphan*/  IA64_THREAD_FPH_VALID ; 
 scalar_t__ FUNC0 (struct task_struct*) ; 
 struct ia64_psr* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 

inline void
FUNC6 (struct task_struct *task)
{
	struct ia64_psr *psr = FUNC1(FUNC5(task));

	/*
	 * Prevent migrating this task while
	 * we're fiddling with the FPU state
	 */
	FUNC3();
	if (FUNC0(task) && psr->mfh) {
		psr->mfh = 0;
		task->thread.flags |= IA64_THREAD_FPH_VALID;
		FUNC2(&task->thread.fph[0]);
	}
	FUNC4();
}