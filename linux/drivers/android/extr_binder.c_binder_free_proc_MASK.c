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
struct binder_proc {int /*<<< orphan*/  tsk; int /*<<< orphan*/  alloc; int /*<<< orphan*/  delivered_death; int /*<<< orphan*/  todo; } ;

/* Variables and functions */
 int /*<<< orphan*/  BINDER_STAT_PROC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct binder_proc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct binder_proc *proc)
{
	FUNC0(!FUNC4(&proc->todo));
	FUNC0(!FUNC4(&proc->delivered_death));
	FUNC1(&proc->alloc);
	FUNC5(proc->tsk);
	FUNC2(BINDER_STAT_PROC);
	FUNC3(proc);
}