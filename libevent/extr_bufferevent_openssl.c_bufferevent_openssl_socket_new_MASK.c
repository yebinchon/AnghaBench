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
typedef  scalar_t__ evutil_socket_t ;
typedef  enum bufferevent_ssl_state { ____Placeholder_bufferevent_ssl_state } bufferevent_ssl_state ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int BEV_OPT_CLOSE_ON_FREE ; 
 long FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct bufferevent* FUNC6 (struct event_base*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int,int) ; 

struct bufferevent *
FUNC7(struct event_base *base,
    evutil_socket_t fd,
    SSL *ssl,
    enum bufferevent_ssl_state state,
    int options)
{
	/* Does the SSL already have an fd? */
	BIO *bio = FUNC4(ssl);
	long have_fd = -1;

	if (bio)
		have_fd = FUNC0(bio, NULL);

	if (have_fd >= 0) {
		/* The SSL is already configured with an fd. */
		if (fd < 0) {
			/* We should learn the fd from the SSL. */
			fd = (evutil_socket_t) have_fd;
		} else if (have_fd == (long)fd) {
			/* We already know the fd from the SSL; do nothing */
		} else {
			/* We specified an fd different from that of the SSL.
			   This is probably an error on our part.  Fail. */
			goto err;
		}
		FUNC2(bio, 0);
	} else {
		/* The SSL isn't configured with a BIO with an fd. */
		if (fd >= 0) {
			/* ... and we have an fd we want to use. */
			bio = FUNC1((int)fd, 0);
			FUNC5(ssl, bio, bio);
		} else {
			/* Leave the fd unset. */
		}
	}

	return FUNC6(
		base, NULL, fd, ssl, state, options);

err:
	if (options & BEV_OPT_CLOSE_ON_FREE)
		FUNC3(ssl);
	return NULL;
}