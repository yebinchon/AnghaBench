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
struct bufferevent_private {int options; short eventcb_pending; int /*<<< orphan*/  errno_pending; } ;
struct bufferevent {int /*<<< orphan*/  cbarg; int /*<<< orphan*/  (* errorcb ) (struct bufferevent*,short,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int BEV_OPT_DEFER_CALLBACKS ; 
 struct bufferevent_private* FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*,short,int /*<<< orphan*/ ) ; 

void
FUNC4(struct bufferevent *bufev, short what, int options)
{
	/* Requires that we hold the lock and a reference */
	struct bufferevent_private *p = FUNC0(bufev);
	if (bufev->errorcb == NULL)
		return;
	if ((p->options|options) & BEV_OPT_DEFER_CALLBACKS) {
		p->eventcb_pending |= what;
		p->errno_pending = FUNC1();
		FUNC2(p);
	} else {
		bufev->errorcb(bufev, what, bufev->cbarg);
	}
}