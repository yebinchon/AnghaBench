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
struct evmap_foreach_event_helper {void* arg; int /*<<< orphan*/  fn; } ;
struct event_base {int dummy; } ;
typedef  int /*<<< orphan*/  event_base_foreach_event_cb ;

/* Variables and functions */
 int /*<<< orphan*/  evmap_io_foreach_event_fn ; 
 int FUNC0 (struct event_base*,int /*<<< orphan*/ ,struct evmap_foreach_event_helper*) ; 
 int /*<<< orphan*/  evmap_signal_foreach_event_fn ; 
 int FUNC1 (struct event_base*,int /*<<< orphan*/ ,struct evmap_foreach_event_helper*) ; 

int
FUNC2(struct event_base *base,
    event_base_foreach_event_cb fn, void *arg)
{
	struct evmap_foreach_event_helper h;
	int r;
	h.fn = fn;
	h.arg = arg;
	if ((r = FUNC0(base, evmap_io_foreach_event_fn, &h)))
		return r;
	return FUNC1(base, evmap_signal_foreach_event_fn, &h);
}