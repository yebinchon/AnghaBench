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
struct wm_context {struct bufferevent* bev; int /*<<< orphan*/  wm_high; scalar_t__ server; int /*<<< orphan*/  flags; } ;
struct sockaddr {int dummy; } ;
struct event_base {int dummy; } ;
struct evconnlistener {int dummy; } ;
struct bufferevent {int dummy; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFEREVENT_SSL_ACCEPTING ; 
 int EV_READ ; 
 int EV_WRITE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct bufferevent*,int) ; 
 struct bufferevent* FUNC5 (struct event_base*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct wm_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct bufferevent*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct evconnlistener*) ; 
 struct event_base* FUNC9 (struct evconnlistener*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  the_cert ; 
 int /*<<< orphan*/  the_key ; 
 int /*<<< orphan*/  wm_eventcb ; 
 int /*<<< orphan*/  wm_transfer ; 

__attribute__((used)) static void
FUNC11(struct evconnlistener *listener, evutil_socket_t fd,
    struct sockaddr *addr, int socklen, void *arg)
{
	struct wm_context *ctx = arg;
	struct bufferevent *bev;
	struct event_base *base = FUNC9(listener);
	SSL *ssl = FUNC0(FUNC10());

	FUNC2(ssl, the_cert);
	FUNC1(ssl, the_key);

	bev = FUNC5(
		base, fd, ssl, BUFFEREVENT_SSL_ACCEPTING, ctx->flags);

	FUNC3(("wm_transfer-%s(%p): accept",
		ctx->server ? "server" : "client", bev));

	FUNC7(bev, EV_READ, 0, ctx->wm_high);
	FUNC6(bev, wm_transfer, NULL, wm_eventcb, ctx);
	FUNC4(bev, EV_READ|EV_WRITE);
	ctx->bev = bev;

	/* Only accept once, then disable ourself. */
	FUNC8(listener);
}