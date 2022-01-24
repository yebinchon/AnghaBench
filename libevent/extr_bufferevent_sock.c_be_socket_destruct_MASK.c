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
struct bufferevent_private {int options; int /*<<< orphan*/  dns_request; } ;
struct bufferevent {int /*<<< orphan*/  ev_read; } ;
typedef  scalar_t__ evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int BEV_OPT_CLOSE_ON_FREE ; 
 struct bufferevent_private* FUNC1 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct bufferevent *bufev)
{
	struct bufferevent_private *bufev_p = FUNC1(bufev);
	evutil_socket_t fd;
	FUNC2(FUNC0(bufev));

	fd = FUNC4(&bufev->ev_read);

	if ((bufev_p->options & BEV_OPT_CLOSE_ON_FREE) && fd >= 0)
		FUNC3(fd);

	FUNC5(bufev_p->dns_request);
}