#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct event_base {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  ev_timeout; } ;
struct TYPE_4__ {TYPE_1__ ev_io; } ;
struct event {int ev_flags; TYPE_2__ ev_; struct event_base* ev_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_base*) ; 
 int EVLIST_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct event*) ; 
 int /*<<< orphan*/  FUNC3 (struct event_base*,struct event*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct event *ev)
{
	struct event_base *base = ev->ev_base;

	FUNC0(base);
	FUNC2(ev);

	FUNC1(("event_remove_timer_nolock: event: %p", ev));

	/* If it's not pending on a timeout, we don't need to do anything. */
	if (ev->ev_flags & EVLIST_TIMEOUT) {
		FUNC3(base, ev);
		FUNC4(&ev->ev_.ev_io.ev_timeout);
	}

	return (0);
}