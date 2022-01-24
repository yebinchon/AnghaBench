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
struct bufferevent {int /*<<< orphan*/  enabled; int /*<<< orphan*/  ev_base; int /*<<< orphan*/  ev_write; int /*<<< orphan*/  ev_read; } ;
struct TYPE_2__ {struct bufferevent bev; } ;
struct bufferevent_openssl {TYPE_1__ bev; scalar_t__ underlying; } ;
typedef  scalar_t__ evutil_socket_t ;

/* Variables and functions */
 int EV_FINALIZE ; 
 int EV_PERSIST ; 
 int EV_READ ; 
 int EV_WRITE ; 
 int /*<<< orphan*/  be_openssl_eventcb ; 
 int /*<<< orphan*/  be_openssl_handshakecb ; 
 int /*<<< orphan*/  be_openssl_handshakeeventcb ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bufferevent_openssl*) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int FUNC3 (struct bufferevent_openssl*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,struct bufferevent_openssl*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct bufferevent_openssl *bev_ssl, evutil_socket_t fd)
{
	if (bev_ssl->underlying) {
		FUNC1(bev_ssl->underlying,
		    be_openssl_handshakecb, be_openssl_handshakecb,
		    be_openssl_eventcb,
		    bev_ssl);

		if (fd < 0)
			return 0;

		if (FUNC2(bev_ssl->underlying, fd))
			return 1;

		return FUNC3(bev_ssl);
	} else {
		struct bufferevent *bev = &bev_ssl->bev.bev;

		if (FUNC6(&bev->ev_read)) {
			FUNC5(&bev->ev_read);
			FUNC5(&bev->ev_write);
		}

		FUNC4(&bev->ev_read, bev->ev_base, fd,
		    EV_READ|EV_PERSIST|EV_FINALIZE,
		    be_openssl_handshakeeventcb, bev_ssl);
		FUNC4(&bev->ev_write, bev->ev_base, fd,
		    EV_WRITE|EV_PERSIST|EV_FINALIZE,
		    be_openssl_handshakeeventcb, bev_ssl);
		if (fd >= 0)
			FUNC0(bev, bev->enabled);
		return 0;
	}
}