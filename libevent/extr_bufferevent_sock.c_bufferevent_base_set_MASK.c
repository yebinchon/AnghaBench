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
struct bufferevent {int /*<<< orphan*/  ev_write; int /*<<< orphan*/  ev_read; struct event_base* ev_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*) ; 
 int FUNC3 (struct event_base*,int /*<<< orphan*/ *) ; 

int
FUNC4(struct event_base *base, struct bufferevent *bufev)
{
	int res = -1;

	FUNC1(bufev);
	if (!FUNC0(bufev))
		goto done;

	bufev->ev_base = base;

	res = FUNC3(base, &bufev->ev_read);
	if (res == -1)
		goto done;

	res = FUNC3(base, &bufev->ev_write);
done:
	FUNC2(bufev);
	return res;
}