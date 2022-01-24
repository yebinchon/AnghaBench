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
struct bufferevent_private {int /*<<< orphan*/  write_suspended; int /*<<< orphan*/  read_suspended; } ;
struct bufferevent {short enabled; int /*<<< orphan*/  ev_write; int /*<<< orphan*/  timeout_write; int /*<<< orphan*/  output; int /*<<< orphan*/  ev_read; int /*<<< orphan*/  timeout_read; } ;

/* Variables and functions */
 struct bufferevent_private* FUNC0 (struct bufferevent*) ; 
 short const EV_READ ; 
 short const EV_WRITE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct bufferevent *bev)
{
	const short enabled = bev->enabled;
	struct bufferevent_private *bev_p = FUNC0(bev);
	int r1=0, r2=0;
	if ((enabled & EV_READ) && !bev_p->read_suspended &&
	    FUNC4(&bev->timeout_read))
		r1 = FUNC2(&bev->ev_read, &bev->timeout_read);
	else
		r1 = FUNC3(&bev->ev_read);

	if ((enabled & EV_WRITE) && !bev_p->write_suspended &&
	    FUNC4(&bev->timeout_write) &&
	    FUNC1(bev->output))
		r2 = FUNC2(&bev->ev_write, &bev->timeout_write);
	else
		r2 = FUNC3(&bev->ev_write);
	if (r1 < 0 || r2 < 0)
		return -1;
	return 0;
}