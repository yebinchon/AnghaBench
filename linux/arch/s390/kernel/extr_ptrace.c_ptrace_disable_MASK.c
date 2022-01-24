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
struct TYPE_2__ {scalar_t__ per_flags; int /*<<< orphan*/  per_event; int /*<<< orphan*/  per_user; } ;
struct task_struct {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIF_PER_TRAP ; 
 int /*<<< orphan*/  TIF_SINGLE_STEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 

void FUNC4(struct task_struct *task)
{
	FUNC2(&task->thread.per_user, 0, sizeof(task->thread.per_user));
	FUNC2(&task->thread.per_event, 0, sizeof(task->thread.per_event));
	FUNC1(task, TIF_SINGLE_STEP);
	FUNC0(FUNC3(task), PIF_PER_TRAP);
	task->thread.per_flags = 0;
}