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
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct event_base {int dummy; } ;
struct event {int dummy; } ;
struct cond_wait {int lock; int cond; } ;
typedef  int /*<<< orphan*/  THREAD_FN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int NUM_ITERATIONS ; 
 int NUM_THREADS ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int count ; 
 int count_lock ; 
 int /*<<< orphan*/  FUNC9 (struct event_base*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct event*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC11 (struct event*,struct event_base*,int /*<<< orphan*/ ,struct cond_wait*) ; 
 int /*<<< orphan*/  FUNC12 (struct timeval*) ; 
 int /*<<< orphan*/  wake_all_timeout ; 

__attribute__((used)) static THREAD_FN
FUNC13(void *arg)
{
	struct cond_wait cw;
	struct event_base *base = arg;
	struct event ev;
	int i = 0;

	FUNC3(cw.lock, 0);
	FUNC2(cw.cond);
	FUNC8(cw.lock);
	FUNC8(cw.cond);

	FUNC11(&ev, base, wake_all_timeout, &cw);
	for (i = 0; i < NUM_ITERATIONS; i++) {
		struct timeval tv;
		FUNC12(&tv);
		tv.tv_sec = 0;
		tv.tv_usec = 3000;

		FUNC0(cw.lock, 0);
		/* we need to make sure that event does not happen before
		 * we get to wait on the conditional variable */
		FUNC8(FUNC10(&ev, &tv) == 0);

		FUNC8(FUNC4(cw.cond, cw.lock) == 0);
		FUNC1(cw.lock, 0);

		FUNC0(count_lock, 0);
		++count;
		FUNC1(count_lock, 0);
	}

	/* exit the loop only if all threads fired all timeouts */
	FUNC0(count_lock, 0);
	if (count >= NUM_THREADS * NUM_ITERATIONS)
		FUNC9(base, NULL);
	FUNC1(count_lock, 0);

	FUNC6(cw.lock, 0);
	FUNC5(cw.cond);

	FUNC7();
}