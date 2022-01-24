#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct event_base {int dummy; } ;
struct evconnlistener {int dummy; } ;
struct context {struct bufferevent* in; struct bufferevent* out; TYPE_2__* opts; } ;
struct bufferevent {int dummy; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_3__ {int /*<<< orphan*/  keep; } ;
struct TYPE_4__ {TYPE_1__ extra; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EV_READ ; 
 int EV_WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent**) ; 
 struct bufferevent* FUNC2 (struct context*,struct event_base*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct bufferevent*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct context*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct evconnlistener*) ; 
 struct event_base* FUNC7 (struct evconnlistener*) ; 
 int /*<<< orphan*/  FUNC8 (struct sockaddr*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  read_cb ; 
 int /*<<< orphan*/  server_event_cb ; 
 int /*<<< orphan*/  write_cb ; 

__attribute__((used)) static void
FUNC10(struct evconnlistener *listener, evutil_socket_t fd,
	struct sockaddr *sa, int socklen, void *arg)
{
	char buffer[128];
	struct context *ctx = arg;
	struct bufferevent *bev = NULL;
	struct event_base *base = FUNC7(listener);

	if (!ctx->opts->extra.keep)
		FUNC6(listener);

	FUNC9("Accepting %s (fd=%d)\n",
		FUNC8(sa, buffer, sizeof(buffer)-1), fd);

	bev = FUNC2(ctx, base, fd);
	if (!bev) {
		FUNC5("Cannot make bufferevent for fd=%d\n", fd);
		goto err;
	}

	FUNC4(bev, read_cb, write_cb, server_event_cb, ctx);
	FUNC3(bev, EV_READ|EV_WRITE);

	/** TODO: support multiple bevs */
	FUNC0(!ctx->out);
	ctx->out = bev;

	if (FUNC3(ctx->in, EV_READ)) {
		FUNC5("Cannot monitor EV_READ on input\n");
		goto err;
	}

	return;

err:
	FUNC1(&bev);
}