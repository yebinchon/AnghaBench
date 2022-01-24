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
struct bufferevent {int /*<<< orphan*/  output; } ;
struct bufferevent_private {struct bufferevent bev; } ;
struct bufferevent_openssl {int old_state; int last_write; struct bufferevent_private bev; int /*<<< orphan*/ * ssl; int /*<<< orphan*/  outbuf_cb; struct bufferevent* underlying; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;
typedef  enum bufferevent_ssl_state { ____Placeholder_bufferevent_ssl_state } bufferevent_ssl_state ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int BEV_OPT_CLOSE_ON_FREE ; 
 int BEV_OPT_THREADSAFE ; 
 int /*<<< orphan*/  BEV_SUSPEND_FILT_READ ; 
 int BUFFEREVENT_SSL_OPEN ; 
 int EV_READ ; 
 int EV_WRITE ; 
 int /*<<< orphan*/  SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent_openssl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  be_openssl_outbuf_cb ; 
 scalar_t__ FUNC3 (struct bufferevent_openssl*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bufferevent*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bufferevent*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC7 (struct bufferevent*) ; 
 scalar_t__ FUNC8 (struct bufferevent_private*,struct event_base*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bufferevent*) ; 
 int /*<<< orphan*/  bufferevent_ops_openssl ; 
 int /*<<< orphan*/  FUNC10 (struct bufferevent*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bufferevent_openssl*) ; 
 int /*<<< orphan*/  FUNC13 (struct bufferevent_openssl*) ; 
 struct bufferevent_openssl* FUNC14 (int,int) ; 

__attribute__((used)) static struct bufferevent *
FUNC15(struct event_base *base,
    struct bufferevent *underlying,
    evutil_socket_t fd,
    SSL *ssl,
    enum bufferevent_ssl_state state,
    int options)
{
	struct bufferevent_openssl *bev_ssl = NULL;
	struct bufferevent_private *bev_p = NULL;
	int tmp_options = options & ~BEV_OPT_THREADSAFE;

	/* Only one can be set. */
	if (underlying != NULL && fd >= 0)
		goto err;

	if (!(bev_ssl = FUNC14(1, sizeof(struct bufferevent_openssl))))
		goto err;

	bev_p = &bev_ssl->bev;

	if (FUNC8(bev_p, base,
		&bufferevent_ops_openssl, tmp_options) < 0)
		goto err;

	/* Don't explode if we decide to realloc a chunk we're writing from in
	 * the output buffer. */
	FUNC1(ssl, SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER);

	bev_ssl->underlying = underlying;
	bev_ssl->ssl = ssl;

	bev_ssl->outbuf_cb = FUNC12(bev_p->bev.output,
	    be_openssl_outbuf_cb, bev_ssl);

	if (options & BEV_OPT_THREADSAFE)
		FUNC5(&bev_ssl->bev.bev, NULL);

	if (underlying) {
		FUNC9(&bev_ssl->bev.bev);
		FUNC7(underlying);
	}

	bev_ssl->old_state = state;
	bev_ssl->last_write = -1;

	FUNC13(bev_ssl);

	fd = FUNC2(bev_ssl, fd);
	if (FUNC3(bev_ssl, state, fd))
		goto err;

	if (underlying) {
		FUNC10(underlying, EV_READ, 0, 0);
		FUNC4(underlying, EV_READ|EV_WRITE);
		if (state == BUFFEREVENT_SSL_OPEN)
			FUNC11(underlying,
			    BEV_SUSPEND_FILT_READ);
	}

	return &bev_ssl->bev.bev;
err:
	if (options & BEV_OPT_CLOSE_ON_FREE)
		FUNC0(ssl);
	if (bev_ssl) {
		bev_ssl->ssl = NULL;
		FUNC6(&bev_ssl->bev.bev);
	}
	return NULL;
}