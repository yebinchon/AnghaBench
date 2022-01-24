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
struct request {struct request* current_req; struct request* handle; int /*<<< orphan*/  pending_cb; struct request* const request; int /*<<< orphan*/  request_appended; TYPE_1__* ns; struct evdns_base* base; int /*<<< orphan*/  timeout_event; } ;
struct evdns_base {scalar_t__ disable_when_inactive; int /*<<< orphan*/  global_requests_waiting; int /*<<< orphan*/  global_requests_inflight; struct request* req_waiting_head; } ;
struct TYPE_2__ {scalar_t__ requests_inflight; int /*<<< orphan*/  timeout_event; int /*<<< orphan*/  event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request* const) ; 
 int /*<<< orphan*/  FUNC1 (struct evdns_base*) ; 
 int /*<<< orphan*/  EVDNS_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC2 (struct evdns_base*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct request* const,struct request**) ; 
 int /*<<< orphan*/  FUNC5 (struct evdns_base*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,struct request* const) ; 
 int /*<<< orphan*/  FUNC10 (struct request* const) ; 
 int /*<<< orphan*/  FUNC11 (struct request*) ; 

__attribute__((used)) static void
FUNC12(struct request *const req, struct request **head, int free_handle) {
	struct evdns_base *base = req->base;
	int was_inflight = (head != &base->req_waiting_head);
	FUNC1(base);
	FUNC0(req);

	if (head)
		FUNC4(req, head);

	FUNC9(EVDNS_LOG_DEBUG, "Removing timeout for request %p", req);
	if (was_inflight) {
		FUNC8(&req->timeout_event);
		base->global_requests_inflight--;
		req->ns->requests_inflight--;
	} else {
		base->global_requests_waiting--;
	}
	/* it was initialized during request_new / evtimer_assign */
	FUNC6(&req->timeout_event);

	if (req->ns &&
	    req->ns->requests_inflight == 0 &&
	    req->base->disable_when_inactive) {
		FUNC7(&req->ns->event);
		FUNC8(&req->ns->timeout_event);
	}

	if (!req->request_appended) {
		/* need to free the request data on it's own */
		FUNC10(req->request);
	} else {
		/* the request data is appended onto the header */
		/* so everything gets free()ed when we: */
	}

	if (req->handle) {
		FUNC3(req->handle->current_req == req);

		if (free_handle) {
			FUNC11(req->handle);
			req->handle->current_req = NULL;
			if (! req->handle->pending_cb) {
				/* If we're planning to run the callback,
				 * don't free the handle until later. */
				FUNC10(req->handle);
			}
			req->handle = NULL; /* If we have a bug, let's crash
					     * early */
		} else {
			req->handle->current_req = NULL;
		}
	}

	FUNC10(req);

	FUNC5(base);
	FUNC2(base);
}