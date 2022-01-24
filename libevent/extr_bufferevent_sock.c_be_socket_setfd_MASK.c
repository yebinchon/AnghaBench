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
struct bufferevent_private {int /*<<< orphan*/  dns_request; } ;
struct bufferevent {int /*<<< orphan*/  enabled; int /*<<< orphan*/  ev_base; int /*<<< orphan*/  ev_write; int /*<<< orphan*/  ev_read; int /*<<< orphan*/  output; int /*<<< orphan*/  input; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*) ; 
 struct bufferevent_private* FUNC3 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int EV_FINALIZE ; 
 int EV_PERSIST ; 
 int EV_READ ; 
 int EV_WRITE ; 
 int /*<<< orphan*/  FUNC5 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bufferevent_readcb ; 
 int /*<<< orphan*/  bufferevent_writecb ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct bufferevent *bufev, evutil_socket_t fd)
{
	struct bufferevent_private *bufev_p = FUNC3(bufev);

	FUNC1(bufev);
	FUNC4(FUNC0(bufev));

	FUNC8(&bufev->ev_read);
	FUNC8(&bufev->ev_write);

	FUNC6(bufev->input, 0);
	FUNC6(bufev->output, 1);

	FUNC7(&bufev->ev_read, bufev->ev_base, fd,
	    EV_READ|EV_PERSIST|EV_FINALIZE, bufferevent_readcb, bufev);
	FUNC7(&bufev->ev_write, bufev->ev_base, fd,
	    EV_WRITE|EV_PERSIST|EV_FINALIZE, bufferevent_writecb, bufev);

	if (fd >= 0)
		FUNC5(bufev, bufev->enabled);

	FUNC9(bufev_p->dns_request);

	FUNC2(bufev);
}