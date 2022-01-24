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
struct evhttp_connection {int fd; int /*<<< orphan*/  state; int /*<<< orphan*/  flags; int /*<<< orphan*/  bufev; int /*<<< orphan*/  closecb_arg; int /*<<< orphan*/  (* closecb ) (struct evhttp_connection*,int /*<<< orphan*/ ) ;} ;
struct evbuffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVCON_DISCONNECTED ; 
 int /*<<< orphan*/  EVHTTP_CON_READING_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVUTIL_SHUT_WR ; 
 int EV_READ ; 
 int EV_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct evbuffer* FUNC2 (int /*<<< orphan*/ ) ; 
 struct evbuffer* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct evbuffer*,int) ; 
 scalar_t__ FUNC8 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct evhttp_connection*,int /*<<< orphan*/ ) ; 

void
FUNC12(struct evhttp_connection *evcon)
{
	struct evbuffer *tmp;
	int err;

	FUNC5(evcon->bufev, NULL, NULL, NULL, NULL);

	/* XXXX This is not actually an optimal fix.  Instead we ought to have
	   an API for "stop connecting", or use bufferevent_setfd to turn off
	   connecting.  But for Libevent 2.0, this seems like a minimal change
	   least likely to disrupt the rest of the bufferevent and http code.

	   Why is this here?  If the fd is set in the bufferevent, and the
	   bufferevent is connecting, then you can't actually stop the
	   bufferevent from trying to connect with bufferevent_disable().  The
	   connect will never trigger, since we close the fd, but the timeout
	   might.  That caused an assertion failure in evhttp_connection_fail_.
	*/
	FUNC1(evcon->bufev, EV_READ|EV_WRITE);

	if (evcon->fd == -1)
		evcon->fd = FUNC4(evcon->bufev);

	if (evcon->fd != -1) {
		/* inform interested parties about connection close */
		if (FUNC8(evcon) && evcon->closecb != NULL)
			(*evcon->closecb)(evcon, evcon->closecb_arg);

		FUNC10(evcon->fd, EVUTIL_SHUT_WR);
		FUNC9(evcon->fd);
		evcon->fd = -1;
	}
	err = FUNC6(evcon->bufev, -1);
	FUNC0(!err && "setfd");

	/* we need to clean up any buffered data */
	tmp = FUNC3(evcon->bufev);
	err = FUNC7(tmp, -1);
	FUNC0(!err && "drain output");
	tmp = FUNC2(evcon->bufev);
	err = FUNC7(tmp, -1);
	FUNC0(!err && "drain input");

	evcon->flags &= ~EVHTTP_CON_READING_ERROR;

	evcon->state = EVCON_DISCONNECTED;
}