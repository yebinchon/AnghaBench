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
struct event_base {int dummy; } ;
struct event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct event_base*) ; 
 struct event_base* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct event*) ; 
 int /*<<< orphan*/  FUNC5 (struct event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct event*) ; 
 int /*<<< orphan*/  signal_cb ; 
 int test_ok ; 

__attribute__((used)) static void
FUNC6(void)
{
	/* make sure that evsignal_event is event_del'ed and pipe closed */
	struct event ev;
	struct event_base *base = FUNC2();
	FUNC5(&ev, SIGUSR1, signal_cb, &ev);
	FUNC3(&ev, NULL);
	FUNC4(&ev);
	FUNC1(base);
	/* If we got here without asserting, we're fine. */
	test_ok = 1;
	FUNC0();
}