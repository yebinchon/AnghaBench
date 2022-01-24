#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct event_base {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  pkey; int /*<<< orphan*/  cert; int /*<<< orphan*/  ctx; } ;
struct context {TYPE_3__* opts; TYPE_2__ ssl; } ;
struct bufferevent {int dummy; } ;
typedef  int evutil_socket_t ;
typedef  enum bufferevent_ssl_state { ____Placeholder_bufferevent_ssl_state } bufferevent_ssl_state ;
struct TYPE_4__ {scalar_t__ ssl; } ;
struct TYPE_6__ {int max_read; TYPE_1__ extra; } ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int BEV_OPT_CLOSE_ON_FREE ; 
 int BUFFEREVENT_SSL_ACCEPTING ; 
 int BUFFEREVENT_SSL_CONNECTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct bufferevent* FUNC4 (struct event_base*,int,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC5 (struct bufferevent*,int) ; 
 struct bufferevent* FUNC6 (struct event_base*,int,int) ; 

__attribute__((used)) static struct bufferevent *
FUNC7(struct context *ctx, struct event_base *base, evutil_socket_t fd)
{
	SSL *ssl = NULL;
	struct bufferevent *bev = NULL;
	int flags = BEV_OPT_CLOSE_ON_FREE;
	enum bufferevent_ssl_state state = BUFFEREVENT_SSL_CONNECTING;

	if (fd != -1)
		state = BUFFEREVENT_SSL_ACCEPTING;

	if (ctx->opts->extra.ssl) {
		ssl = FUNC1(ctx->ssl.ctx);
		if (!ssl)
			goto err;
		if (FUNC3(ssl, ctx->ssl.cert) != 1)
			goto err;
		if (FUNC2(ssl, ctx->ssl.pkey) != 1)
			goto err;
		bev = FUNC4(base, fd, ssl, state, flags);
	} else {
		bev = FUNC6(base, fd, flags);
	}
	if (ctx->opts->max_read != -1) {
		if (FUNC5(bev, ctx->opts->max_read))
			goto err;
	}
	return bev;
err:
	if (ssl)
		FUNC0(ssl);
	return NULL;
}