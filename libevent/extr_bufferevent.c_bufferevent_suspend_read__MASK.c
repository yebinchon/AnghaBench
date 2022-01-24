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
struct bufferevent_private {int /*<<< orphan*/  read_suspended; } ;
struct bufferevent {TYPE_1__* be_ops; } ;
typedef  int /*<<< orphan*/  bufferevent_suspend_flags ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable ) (struct bufferevent*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 struct bufferevent_private* FUNC2 (struct bufferevent*) ; 
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct bufferevent *bufev, bufferevent_suspend_flags what)
{
	struct bufferevent_private *bufev_private = FUNC2(bufev);
	FUNC0(bufev);
	if (!bufev_private->read_suspended)
		bufev->be_ops->disable(bufev, EV_READ);
	bufev_private->read_suspended |= what;
	FUNC1(bufev);
}