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
struct binder_thread {int /*<<< orphan*/  proc; int /*<<< orphan*/  tmp_ref; scalar_t__ is_dead; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct binder_thread*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct binder_thread *thread)
{
	/*
	 * atomic is used to protect the counter value while
	 * it cannot reach zero or thread->is_dead is false
	 */
	FUNC3(thread->proc);
	FUNC0(&thread->tmp_ref);
	if (thread->is_dead && !FUNC1(&thread->tmp_ref)) {
		FUNC4(thread->proc);
		FUNC2(thread);
		return;
	}
	FUNC4(thread->proc);
}