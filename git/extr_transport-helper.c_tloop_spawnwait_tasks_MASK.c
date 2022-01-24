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
struct bidirectional_transfer_state {int /*<<< orphan*/  ptg; int /*<<< orphan*/  gtp; } ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  udt_copy_task_routine ; 

__attribute__((used)) static int FUNC5(struct bidirectional_transfer_state *s)
{
	pthread_t gtp_thread;
	pthread_t ptg_thread;
	int err;
	int ret = 0;
	err = FUNC2(&gtp_thread, NULL, udt_copy_task_routine,
		&s->gtp);
	if (err)
		FUNC1(FUNC0("can't start thread for copying data: %s"), FUNC3(err));
	err = FUNC2(&ptg_thread, NULL, udt_copy_task_routine,
		&s->ptg);
	if (err)
		FUNC1(FUNC0("can't start thread for copying data: %s"), FUNC3(err));

	ret |= FUNC4(gtp_thread, "Git to program copy");
	ret |= FUNC4(ptg_thread, "Program to git copy");
	return ret;
}