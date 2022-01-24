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
struct timeval {int member_0; int /*<<< orphan*/  member_1; } ;
struct event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_PERSIST ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  base ; 
 int /*<<< orphan*/  delays ; 
 int /*<<< orphan*/  durations ; 
 int /*<<< orphan*/  FUNC0 (struct event*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct event*) ; 
 struct event* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct event* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  on_check ; 
 int /*<<< orphan*/  on_prepare ; 
 int /*<<< orphan*/  on_sigint ; 
 int /*<<< orphan*/  on_timeout ; 

int
FUNC11(int argc, char **argv)
{
	struct timeval one_second = { 1, 0 };
	struct event *timeout_event, *sigint_event;

	base = FUNC3();
	durations = FUNC10(100);
	delays = FUNC10(100);

	/* add prepare and check watchers; no need to hang on to their pointers,
	 * since they will be freed for us in event_base_free. */
	FUNC8(base, &on_prepare, NULL);
	FUNC7(base, &on_check, NULL);

	/* set a persistent one second timeout */
	timeout_event = FUNC5(base, -1, EV_PERSIST, &on_timeout, NULL);
	if (!timeout_event)
		return EXIT_FAILURE;
	FUNC0(timeout_event, &one_second);

	/* set a handler for interrupt, so we can quit cleanly */
	sigint_event = FUNC6(base, SIGINT, &on_sigint, NULL);
	if (!sigint_event)
		return EXIT_FAILURE;
	FUNC0(sigint_event, NULL);

	/* run the event loop until interrupted */
	FUNC1(base);

	/* clean up */
	FUNC4(timeout_event);
	FUNC4(sigint_event);
	FUNC2(base);
	FUNC9(durations);
	FUNC9(delays);

	return EXIT_SUCCESS;
}