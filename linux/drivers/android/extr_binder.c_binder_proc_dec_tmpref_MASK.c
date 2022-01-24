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
struct binder_proc {int /*<<< orphan*/  tmp_ref; int /*<<< orphan*/  threads; scalar_t__ is_dead; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct binder_proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct binder_proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct binder_proc*) ; 

__attribute__((used)) static void FUNC4(struct binder_proc *proc)
{
	FUNC2(proc);
	proc->tmp_ref--;
	if (proc->is_dead && FUNC0(&proc->threads) &&
			!proc->tmp_ref) {
		FUNC3(proc);
		FUNC1(proc);
		return;
	}
	FUNC3(proc);
}