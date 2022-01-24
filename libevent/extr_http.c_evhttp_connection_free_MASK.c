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
struct evhttp_request {int dummy; } ;
struct evhttp_connection {int fd; struct evhttp_connection* address; struct evhttp_connection* bind_address; int /*<<< orphan*/ * bufev; int /*<<< orphan*/  read_more_deferred_cb; int /*<<< orphan*/  retry_ev; struct evhttp* http_server; int /*<<< orphan*/  requests; int /*<<< orphan*/  closecb_arg; int /*<<< orphan*/  (* closecb ) (struct evhttp_connection*,int /*<<< orphan*/ ) ;} ;
struct evhttp {int /*<<< orphan*/  connections; } ;

/* Variables and functions */
 int BEV_OPT_CLOSE_ON_FREE ; 
 int /*<<< orphan*/  EVUTIL_SHUT_WR ; 
 struct evhttp_request* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct evhttp_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC10 (struct evhttp_connection*,struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC13 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct evhttp_connection*,int /*<<< orphan*/ ) ; 

void
FUNC16(struct evhttp_connection *evcon)
{
	struct evhttp_request *req;
	int need_close = 0;

	/* notify interested parties that this connection is going down */
	if (evcon->fd != -1) {
		if (FUNC9(evcon) && evcon->closecb != NULL)
			(*evcon->closecb)(evcon, evcon->closecb_arg);
	}

	/* remove all requests that might be queued on this
	 * connection.  for server connections, this should be empty.
	 * because it gets dequeued either in evhttp_connection_done or
	 * evhttp_connection_fail_.
	 */
	while ((req = FUNC0(&evcon->requests)) != NULL) {
		FUNC10(evcon, req);
	}

	if (evcon->http_server != NULL) {
		struct evhttp *http = evcon->http_server;
		FUNC1(&http->connections, evcon, next);
	}

	if (FUNC8(&evcon->retry_ev)) {
		FUNC7(&evcon->retry_ev);
		FUNC5(&evcon->retry_ev);
	}

	FUNC6(FUNC12(evcon),
	    &evcon->read_more_deferred_cb);

	if (evcon->bufev != NULL) {
		need_close =
			!(FUNC3(evcon->bufev) & BEV_OPT_CLOSE_ON_FREE);
		if (evcon->fd == -1)
			evcon->fd = FUNC4(evcon->bufev);

		FUNC2(evcon->bufev);
	}

	if (evcon->fd != -1) {
		FUNC14(evcon->fd, EVUTIL_SHUT_WR);
		if (need_close)
			FUNC11(evcon->fd);
	}

	if (evcon->bind_address != NULL)
		FUNC13(evcon->bind_address);

	if (evcon->address != NULL)
		FUNC13(evcon->address);

	FUNC13(evcon);
}