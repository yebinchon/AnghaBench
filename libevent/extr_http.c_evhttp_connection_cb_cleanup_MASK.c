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
struct timeval {int tv_usec; int tv_sec; } ;
struct evhttp_request {int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  (* cb ) (struct evhttp_request*,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * evcon; } ;
struct evcon_requestq {int dummy; } ;
struct evhttp_connection {scalar_t__ retry_max; scalar_t__ retry_cnt; struct evcon_requestq requests; int /*<<< orphan*/  retry_ev; int /*<<< orphan*/  base; struct timeval initial_retry_timeout; } ;

/* Variables and functions */
 struct evhttp_request* FUNC0 (struct evcon_requestq*) ; 
 int /*<<< orphan*/  FUNC1 (struct evcon_requestq*) ; 
 int /*<<< orphan*/  FUNC2 (struct evcon_requestq*,struct evhttp_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct evcon_requestq*,struct evhttp_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC5 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  evhttp_connection_retry ; 
 int /*<<< orphan*/  FUNC6 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct evhttp_connection*) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC8 (struct evhttp_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct evhttp_connection *evcon)
{
	struct evcon_requestq requests;

	FUNC5(evcon);
	if (evcon->retry_max < 0 || evcon->retry_cnt < evcon->retry_max) {
		struct timeval tv_retry = evcon->initial_retry_timeout;
		int i;
		FUNC7(&evcon->retry_ev, evcon->base, evhttp_connection_retry, evcon);
		/* XXXX handle failure from evhttp_add_event */
		for (i=0; i < evcon->retry_cnt; ++i) {
			tv_retry.tv_usec *= 2;
			if (tv_retry.tv_usec > 1000000) {
				tv_retry.tv_usec -= 1000000;
				tv_retry.tv_sec += 1;
			}
			tv_retry.tv_sec *= 2;
			if (tv_retry.tv_sec > 3600) {
				tv_retry.tv_sec = 3600;
				tv_retry.tv_usec = 0;
			}
		}
		FUNC4(&evcon->retry_ev, &tv_retry);
		evcon->retry_cnt++;
		return;
	}

	/*
	 * User callback can do evhttp_make_request() on the same
	 * evcon so new request will be added to evcon->requests.  To
	 * avoid freeing it prematurely we iterate over the copy of
	 * the queue.
	 */
	FUNC1(&requests);
	while (FUNC0(&evcon->requests) != NULL) {
		struct evhttp_request *request = FUNC0(&evcon->requests);
		FUNC3(&evcon->requests, request, next);
		FUNC2(&requests, request, next);
	}

	/* for now, we just signal all requests by executing their callbacks */
	while (FUNC0(&requests) != NULL) {
		struct evhttp_request *request = FUNC0(&requests);
		FUNC3(&requests, request, next);
		request->evcon = NULL;

		/* we might want to set an error here */
		request->cb(request, request->cb_arg);
		FUNC6(request);
	}
}