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
typedef  enum bufferevent_ssl_state { ____Placeholder_bufferevent_ssl_state } bufferevent_ssl_state ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int BEV_OPT_CLOSE_ON_FREE ; 
 int /*<<< orphan*/ * FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct bufferevent* FUNC3 (struct event_base*,struct bufferevent*,int,int /*<<< orphan*/ *,int,int) ; 

struct bufferevent *
FUNC4(struct event_base *base,
    struct bufferevent *underlying,
    SSL *ssl,
    enum bufferevent_ssl_state state,
    int options)
{
	BIO *bio;
	struct bufferevent *bev;

	if (!underlying)
		goto err;
	if (!(bio = FUNC0(underlying)))
		goto err;

	FUNC2(ssl, bio, bio);

	bev = FUNC3(
		base, underlying, -1, ssl, state, options);
	return bev;

err:
	if (options & BEV_OPT_CLOSE_ON_FREE)
		FUNC1(ssl);
	return NULL;
}