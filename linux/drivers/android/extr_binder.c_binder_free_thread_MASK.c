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
struct binder_thread {int /*<<< orphan*/  proc; int /*<<< orphan*/  todo; } ;

/* Variables and functions */
 int /*<<< orphan*/  BINDER_STAT_THREAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct binder_thread*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct binder_thread *thread)
{
	FUNC0(!FUNC4(&thread->todo));
	FUNC2(BINDER_STAT_THREAD);
	FUNC1(thread->proc);
	FUNC3(thread);
}