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
struct sockaddr {int /*<<< orphan*/  sa_family; } ;
struct bufferevent_private {int connecting; } ;
struct bufferevent {int /*<<< orphan*/  ev_base; int /*<<< orphan*/  ev_write; } ;
typedef  scalar_t__ evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  BEV_EVENT_ERROR ; 
 scalar_t__ FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  BEV_OPT_DEFER_CALLBACKS ; 
 struct bufferevent_private* FUNC1 (struct bufferevent*) ; 
 int EVUTIL_SOCK_NONBLOCK ; 
 int EV_FINALIZE ; 
 int EV_PERSIST ; 
 int EV_READ ; 
 int EV_WRITE ; 
 int SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*,int) ; 
 scalar_t__ FUNC3 (struct bufferevent*) ; 
 int FUNC4 (struct bufferevent*,scalar_t__,struct sockaddr const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC6 (struct bufferevent*,int) ; 
 scalar_t__ FUNC7 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC8 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC9 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bufferevent*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct bufferevent*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bufferevent_writecb ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (scalar_t__*,struct sockaddr const*,int) ; 

int
FUNC16(struct bufferevent *bev,
    const struct sockaddr *sa, int socklen)
{
	struct bufferevent_private *bufev_p = FUNC1(bev);

	evutil_socket_t fd;
	int r = 0;
	int result=-1;
	int ownfd = 0;

	FUNC8(bev);

	fd = FUNC7(bev);
	if (fd < 0) {
		if (!sa)
			goto done;
		fd = FUNC14(sa->sa_family,
		    SOCK_STREAM|EVUTIL_SOCK_NONBLOCK, 0);
		if (fd < 0)
			goto freesock;
		ownfd = 1;
	}
	if (sa) {
#ifdef _WIN32
		if (bufferevent_async_can_connect_(bev)) {
			bufferevent_setfd(bev, fd);
			r = bufferevent_async_connect_(bev, fd, sa, socklen);
			if (r < 0)
				goto freesock;
			bufev_p->connecting = 1;
			result = 0;
			goto done;
		} else
#endif
		r = FUNC15(&fd, sa, socklen);
		if (r < 0)
			goto freesock;
	}
#ifdef _WIN32
	/* ConnectEx() isn't always around, even when IOCP is enabled.
	 * Here, we borrow the socket object's write handler to fall back
	 * on a non-blocking connect() when ConnectEx() is unavailable. */
	if (BEV_IS_ASYNC(bev)) {
		event_assign(&bev->ev_write, bev->ev_base, fd,
		    EV_WRITE|EV_PERSIST|EV_FINALIZE, bufferevent_writecb, bev);
	}
#endif
	FUNC10(bev, fd);
	if (r == 0) {
		if (! FUNC2(bev, EV_WRITE)) {
			bufev_p->connecting = 1;
			result = 0;
			goto done;
		}
	} else if (r == 1) {
		/* The connect succeeded already. How very BSD of it. */
		result = 0;
		bufev_p->connecting = 1;
		FUNC11(bev, EV_WRITE, BEV_OPT_DEFER_CALLBACKS);
	} else {
		/* The connect failed already.  How very BSD of it. */
		result = 0;
		FUNC9(bev, BEV_EVENT_ERROR, BEV_OPT_DEFER_CALLBACKS);
		FUNC6(bev, EV_WRITE|EV_READ);
	}

	goto done;

freesock:
	if (ownfd)
		FUNC13(fd);
done:
	FUNC5(bev);
	return result;
}