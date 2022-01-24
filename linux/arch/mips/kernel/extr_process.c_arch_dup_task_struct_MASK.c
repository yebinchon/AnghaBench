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
struct task_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct task_struct *dst, struct task_struct *src)
{
	/*
	 * Save any process state which is live in hardware registers to the
	 * parent context prior to duplication. This prevents the new child
	 * state becoming stale if the parent is preempted before copy_thread()
	 * gets a chance to save the parent's live hardware registers to the
	 * child context.
	 */
	FUNC3();

	if (FUNC2())
		FUNC6(current);
	else if (FUNC1())
		FUNC0(current);

	FUNC5(current);

	FUNC4();

	*dst = *src;
	return 0;
}