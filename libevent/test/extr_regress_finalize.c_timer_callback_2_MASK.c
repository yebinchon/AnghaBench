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
struct event_and_count {int /*<<< orphan*/  count; int /*<<< orphan*/  ev2; int /*<<< orphan*/  ev; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  event_finalize_callback_2 ; 

__attribute__((used)) static void
FUNC1(evutil_socket_t fd, short what, void *arg)
{
	struct event_and_count *evc = arg;
	FUNC0(0, evc->ev, event_finalize_callback_2);
	FUNC0(0, evc->ev2, event_finalize_callback_2);
	++ evc->count;
	(void)fd;
	(void)what;
}