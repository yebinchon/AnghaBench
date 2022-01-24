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
typedef  int /*<<< orphan*/  u64 ;
struct spin_multi_state {int loops; int /*<<< orphan*/  exit_wait; int /*<<< orphan*/  enter_wait; int /*<<< orphan*/  start_wait; int /*<<< orphan*/  lock; } ;
struct spin_multi_per_thread {int /*<<< orphan*/  start; struct spin_multi_state* state; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  (*) (struct spin_multi_per_thread*),struct spin_multi_per_thread*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct spin_multi_per_thread*) ; 

__attribute__((used)) static int FUNC6(void *data, u64 *val)
{
	ktime_t finish;
	struct spin_multi_state ms;
	struct spin_multi_per_thread t1, t2;

	ms.lock = FUNC0("multi_get");
	ms.loops = 1000000;

	FUNC1(&ms.start_wait, 2);
	FUNC1(&ms.enter_wait, 2);
	FUNC1(&ms.exit_wait, 2);
	t1.state = &ms;
	t2.state = &ms;

	FUNC2(multi_other, &t2, "multi_get");

	FUNC5(&t1);

	finish = FUNC3();

	*val = FUNC4(finish, t1.start);

	return 0;
}