#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timeval {int member_0; int tv_sec; scalar_t__ tv_usec; int /*<<< orphan*/  member_1; } ;
struct event_config {int dummy; } ;
struct event_base {int dummy; } ;
struct TYPE_2__ {struct event_base* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_TIMEOUT ; 
 int QUEUE_THREAD_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  callback_count ; 
 TYPE_1__* deferred_data ; 
 int /*<<< orphan*/  FUNC2 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC3 (struct event_base*) ; 
 struct event_base* FUNC4 (struct event_config*) ; 
 int /*<<< orphan*/  FUNC5 (struct event_base*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC6 (struct event_config*) ; 
 struct event_config* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct event_config*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/ * load_threads ; 
 int /*<<< orphan*/  start_threads_callback ; 
 int /*<<< orphan*/  timer_callback ; 
 int /*<<< orphan*/  timer_end ; 
 int /*<<< orphan*/  timer_start ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void
FUNC12(void *arg)
{
	struct timeval tv_timer = {1, 0};
	struct event_base *base = NULL;
	struct event_config *cfg = NULL;
	struct timeval elapsed;
	int elapsed_usec;
	int i;

	cfg = FUNC7();
	FUNC11(cfg);
	FUNC8(cfg, NULL, 16, 0);

	base = FUNC4(cfg);
	FUNC11(base);

	for (i = 0; i < QUEUE_THREAD_COUNT; ++i)
		deferred_data[i].queue = base;

	FUNC9(&timer_start, NULL);
	FUNC5(base, -1, EV_TIMEOUT, timer_callback, NULL,
			&tv_timer);
	FUNC5(base, -1, EV_TIMEOUT, start_threads_callback,
			NULL, NULL);
	FUNC2(base);

	FUNC10(&timer_end, &timer_start, &elapsed);
	FUNC1(("callback count, %u", callback_count));
	elapsed_usec =
	    (unsigned)(elapsed.tv_sec*1000000 + elapsed.tv_usec);
	FUNC1(("elapsed time, %u usec", elapsed_usec));

	/* XXX be more intelligent here.  just make sure skew is
	 * within .4 seconds for now. */
	FUNC11(elapsed_usec >= 600000 && elapsed_usec <= 1400000);

end:
	for (i = 0; i < QUEUE_THREAD_COUNT; ++i)
		FUNC0(load_threads[i]);
	if (base)
		FUNC3(base);
	if (cfg)
		FUNC6(cfg);
}