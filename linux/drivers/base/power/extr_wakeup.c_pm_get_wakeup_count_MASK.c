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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  wakeup_count_wait_queue ; 

bool FUNC7(unsigned int *count, bool block)
{
	unsigned int cnt, inpr;

	if (block) {
		FUNC0(wait);

		for (;;) {
			FUNC3(&wakeup_count_wait_queue, &wait,
					TASK_INTERRUPTIBLE);
			FUNC6(&cnt, &inpr);
			if (inpr == 0 || FUNC5(current))
				break;
			FUNC2();
			FUNC4();
		}
		FUNC1(&wakeup_count_wait_queue, &wait);
	}

	FUNC6(&cnt, &inpr);
	*count = cnt;
	return !inpr;
}