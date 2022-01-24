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
struct bufferevent_private {int /*<<< orphan*/  write_suspended; } ;
struct bufferevent {int enabled; TYPE_1__* be_ops; } ;
typedef  int /*<<< orphan*/  bufferevent_suspend_flags ;
struct TYPE_2__ {int /*<<< orphan*/  (* enable ) (struct bufferevent*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 struct bufferevent_private* FUNC2 (struct bufferevent*) ; 
 int EV_WRITE ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*,int) ; 

void
FUNC4(struct bufferevent *bufev, bufferevent_suspend_flags what)
{
	struct bufferevent_private *bufev_private = FUNC2(bufev);
	FUNC0(bufev);
	bufev_private->write_suspended &= ~what;
	if (!bufev_private->write_suspended && (bufev->enabled & EV_WRITE))
		bufev->be_ops->enable(bufev, EV_WRITE);
	FUNC1(bufev);
}