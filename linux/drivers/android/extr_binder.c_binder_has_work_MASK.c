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
struct binder_thread {int /*<<< orphan*/  proc; } ;

/* Variables and functions */
 int FUNC0 (struct binder_thread*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct binder_thread *thread, bool do_proc_work)
{
	bool has_work;

	FUNC1(thread->proc);
	has_work = FUNC0(thread, do_proc_work);
	FUNC2(thread->proc);

	return has_work;
}