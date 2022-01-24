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
struct event_base {int dummy; } ;
struct bufferevent {int dummy; } ;
typedef  char* evutil_socket_t ;

/* Variables and functions */
 short BEV_EVENT_CONNECTED ; 
 short BEV_EVENT_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent**) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 struct event_base* FUNC2 (struct bufferevent*) ; 
 char* FUNC3 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC4 (char*,short,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct event_base*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct bufferevent *bev, short what, int ssl, int stop)
{
	struct event_base *base = FUNC2(bev);
	evutil_socket_t fd = FUNC3(bev);

	if (what & BEV_EVENT_CONNECTED) {
		FUNC6("Connected\n");
		return 0;
	}
	if (ssl && what & BEV_EVENT_ERROR) {
		FUNC1(bev);
	}

	if (stop)
		FUNC5(base, NULL);

	FUNC4("Got 0x%x event on fd=%d. Terminating connection\n", what, fd);
	FUNC0(&bev);
	return 1;
}