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
struct evutil_addrinfo {scalar_t__ ai_addrlen; int /*<<< orphan*/  ai_addr; } ;
struct bufferevent_private {int dns_error; int /*<<< orphan*/ * dns_request; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEV_EVENT_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  BEV_SUSPEND_LOOKUP ; 
 struct bufferevent_private* FUNC1 (struct bufferevent*) ; 
 int EVUTIL_EAI_CANCEL ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct bufferevent*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bufferevent*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct evutil_addrinfo*) ; 

__attribute__((used)) static void
FUNC9(int result, struct evutil_addrinfo *ai,
    void *arg)
{
	struct bufferevent *bev = arg;
	struct bufferevent_private *bev_p = FUNC1(bev);
	int r;
	FUNC0(bev);

	FUNC7(bev, BEV_SUSPEND_LOOKUP);
	FUNC6(bev, BEV_SUSPEND_LOOKUP);

	bev_p->dns_request = NULL;

	if (result == EVUTIL_EAI_CANCEL) {
		bev_p->dns_error = result;
		FUNC2(bev);
		return;
	}
	if (result != 0) {
		bev_p->dns_error = result;
		FUNC3(bev, BEV_EVENT_ERROR, 0);
		FUNC2(bev);
		if (ai)
			FUNC8(ai);
		return;
	}

	/* XXX use the other addrinfos? */
	FUNC5(bev, ai->ai_addr, (int)ai->ai_addrlen);
	r = FUNC4(bev, ai->ai_addr, (int)ai->ai_addrlen);
	if (r < 0)
		FUNC3(bev, BEV_EVENT_ERROR, 0);
	FUNC2(bev);
	FUNC8(ai);
}