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
struct bufferevent_private {scalar_t__ connecting; } ;
struct bufferevent {short enabled; TYPE_1__* be_ops; } ;
struct TYPE_2__ {scalar_t__ (* disable ) (struct bufferevent*,short) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 struct bufferevent_private* FUNC2 (struct bufferevent*) ; 
 scalar_t__ FUNC3 (struct bufferevent*,short) ; 

int
FUNC4(struct bufferevent *bufev, short event)
{
	int r = 0;
	struct bufferevent_private *bufev_private = FUNC2(bufev);

	FUNC0(bufev);
	bufev->enabled &= ~event;

	bufev_private->connecting = 0;
	if (bufev->be_ops->disable(bufev, event) < 0)
		r = -1;

	FUNC1(bufev);
	return r;
}