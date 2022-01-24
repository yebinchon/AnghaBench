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
struct event_overlapped {int dummy; } ;
struct bufferevent {int /*<<< orphan*/  ev_base; int /*<<< orphan*/  input; } ;
struct TYPE_2__ {struct bufferevent bev; scalar_t__ connecting; } ;
struct bufferevent_async {TYPE_1__ bev; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;
typedef  int /*<<< orphan*/  ev_uintptr_t ;
typedef  int /*<<< orphan*/  ev_ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  BEV_EVENT_CONNECTED ; 
 int /*<<< orphan*/  BEV_EVENT_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_UPDATE_CONNECT_CONTEXT ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*,struct event_overlapped*) ; 
 int /*<<< orphan*/  FUNC4 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC5 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct bufferevent_async* FUNC9 (struct event_overlapped*) ; 

__attribute__((used)) static void
FUNC10(struct event_overlapped *eo, ev_uintptr_t key,
    ev_ssize_t nbytes, int ok)
{
	struct bufferevent_async *bev_a = FUNC9(eo);
	struct bufferevent *bev = &bev_a->bev.bev;
	evutil_socket_t sock;

	FUNC0(bev);

	FUNC1(bev_a->bev.connecting);
	bev_a->bev.connecting = 0;
	sock = FUNC6(bev_a->bev.bev.input);
	/* XXXX Handle error? */
	FUNC8(sock, SOL_SOCKET, SO_UPDATE_CONNECT_CONTEXT, NULL, 0);

	if (ok)
		FUNC4(bev);
	else
		FUNC3(bev, eo);

	FUNC2(bev, ok ? BEV_EVENT_CONNECTED : BEV_EVENT_ERROR, 0);

	FUNC7(bev->ev_base);

	FUNC5(bev);
}