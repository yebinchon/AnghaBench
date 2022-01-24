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
struct timeval {int dummy; } ;
struct evthread_win32_cond {int generation; scalar_t__ n_to_wake; int /*<<< orphan*/  lock; int /*<<< orphan*/  event; int /*<<< orphan*/  n_waiting; } ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  CRITICAL_SECTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ INFINITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ WAIT_TIMEOUT ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (struct timeval const*) ; 

__attribute__((used)) static int
FUNC6(void *cond_, void *lock_, const struct timeval *tv)
{
	struct evthread_win32_cond *cond = cond_;
	CRITICAL_SECTION *lock = lock_;
	int generation_at_start;
	int waiting = 1;
	int result = -1;
	DWORD ms = INFINITE, ms_orig = INFINITE, startTime, endTime;
	if (tv)
		ms_orig = ms = FUNC5(tv);

	FUNC0(&cond->lock);
	++cond->n_waiting;
	generation_at_start = cond->generation;
	FUNC2(&cond->lock);

	FUNC2(lock);

	startTime = FUNC1();
	do {
		DWORD res;
		res = FUNC4(cond->event, ms);
		FUNC0(&cond->lock);
		if (cond->n_to_wake &&
		    cond->generation != generation_at_start) {
			--cond->n_to_wake;
			--cond->n_waiting;
			result = 0;
			waiting = 0;
			goto out;
		} else if (res != WAIT_OBJECT_0) {
			result = (res==WAIT_TIMEOUT) ? 1 : -1;
			--cond->n_waiting;
			waiting = 0;
			goto out;
		} else if (ms != INFINITE) {
			endTime = FUNC1();
			if (startTime + ms_orig <= endTime) {
				result = 1; /* Timeout */
				--cond->n_waiting;
				waiting = 0;
				goto out;
			} else {
				ms = startTime + ms_orig - endTime;
			}
		}
		/* If we make it here, we are still waiting. */
		if (cond->n_to_wake == 0) {
			/* There is nobody else who should wake up; reset
			 * the event. */
			FUNC3(cond->event);
		}
	out:
		FUNC2(&cond->lock);
	} while (waiting);

	FUNC0(lock);

	FUNC0(&cond->lock);
	if (!cond->n_waiting)
		FUNC3(cond->event);
	FUNC2(&cond->lock);

	return result;
}