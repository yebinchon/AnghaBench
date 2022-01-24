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
struct bufferevent_private {int /*<<< orphan*/  connecting; } ;
struct bufferevent {int /*<<< orphan*/  ev_write; int /*<<< orphan*/  ev_read; } ;

/* Variables and functions */
 struct bufferevent_private* FUNC0 (struct bufferevent*) ; 
 short EV_READ ; 
 short EV_WRITE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct bufferevent *bufev, short event)
{
	struct bufferevent_private *bufev_p = FUNC0(bufev);
	if (event & EV_READ) {
		if (FUNC1(&bufev->ev_read) == -1)
			return -1;
	}
	/* Don't actually disable the write if we are trying to connect. */
	if ((event & EV_WRITE) && ! bufev_p->connecting) {
		if (FUNC1(&bufev->ev_write) == -1)
			return -1;
	}
	return 0;
}