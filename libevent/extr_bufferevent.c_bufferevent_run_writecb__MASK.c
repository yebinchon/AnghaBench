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
struct bufferevent_private {int options; int writecb_pending; } ;
struct bufferevent {int /*<<< orphan*/  cbarg; int /*<<< orphan*/  (* writecb ) (struct bufferevent*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int BEV_OPT_DEFER_CALLBACKS ; 
 struct bufferevent_private* FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct bufferevent *bufev, int options)
{
	/* Requires that we hold the lock and a reference */
	struct bufferevent_private *p = FUNC0(bufev);
	if (bufev->writecb == NULL)
		return;
	if ((p->options|options) & BEV_OPT_DEFER_CALLBACKS) {
		p->writecb_pending = 1;
		FUNC1(p);
	} else {
		bufev->writecb(bufev, bufev->cbarg);
	}
}