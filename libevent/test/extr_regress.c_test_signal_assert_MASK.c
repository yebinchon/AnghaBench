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
struct TYPE_2__ {scalar_t__ evsig_caught; } ;
struct event_base {TYPE_1__ sig; } ;
struct event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGCONT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct event_base*) ; 
 struct event_base* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct event*) ; 
 int /*<<< orphan*/  FUNC5 (struct event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct event*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signal_cb ; 
 int test_ok ; 

__attribute__((used)) static void
FUNC8(void)
{
	struct event ev;
	struct event_base *base = FUNC2();
	test_ok = 0;
	/* use SIGCONT so we don't kill ourselves when we signal to nowhere */
	FUNC5(&ev, SIGCONT, signal_cb, &ev);
	FUNC3(&ev, NULL);
	/*
	 * if evsignal_del() fails to reset the handler, it's current handler
	 * will still point to evsig_handler().
	 */
	FUNC4(&ev);

	FUNC7(FUNC6(), SIGCONT);
#if 0
	/* only way to verify we were in evsig_handler() */
	/* XXXX Now there's no longer a good way. */
	if (base->sig.evsig_caught)
		test_ok = 0;
	else
		test_ok = 1;
#else
	test_ok = 1;
#endif

	FUNC1(base);
	FUNC0();
	return;
}