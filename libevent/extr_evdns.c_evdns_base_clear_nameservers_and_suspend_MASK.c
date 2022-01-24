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
struct request {scalar_t__ transmit_me; scalar_t__ trans_id; int /*<<< orphan*/  timeout_event; int /*<<< orphan*/ * ns; scalar_t__ reissue_count; scalar_t__ tx_count; struct request* next; } ;
struct nameserver {scalar_t__ socket; int /*<<< orphan*/ * probe_request; int /*<<< orphan*/  base; int /*<<< orphan*/  timeout_event; int /*<<< orphan*/  event; struct nameserver* next; } ;
struct evdns_base {int n_req_heads; scalar_t__ global_requests_inflight; struct request** req_heads; TYPE_1__* req_waiting_head; int /*<<< orphan*/  global_requests_waiting; scalar_t__ global_good_nameservers; struct nameserver* server_head; } ;
struct TYPE_2__ {struct TYPE_2__* prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdns_base*) ; 
 int /*<<< orphan*/  FUNC1 (struct evdns_base*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct request*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct nameserver*) ; 

int
FUNC9(struct evdns_base *base)
{
	struct nameserver *server, *started_at;
	int i;

	FUNC0(base);
	server = base->server_head;
	started_at = base->server_head;
	if (!server) {
		FUNC1(base);
		return 0;
	}
	while (1) {
		struct nameserver *next = server->next;
		(void) FUNC4(&server->event);
		if (FUNC6(&server->timeout_event))
			(void) FUNC5(&server->timeout_event);
		if (server->probe_request) {
			FUNC2(server->base, server->probe_request);
			server->probe_request = NULL;
		}
		if (server->socket >= 0)
			FUNC7(server->socket);
		FUNC8(server);
		if (next == started_at)
			break;
		server = next;
	}
	base->server_head = NULL;
	base->global_good_nameservers = 0;

	for (i = 0; i < base->n_req_heads; ++i) {
		struct request *req, *req_started_at;
		req = req_started_at = base->req_heads[i];
		while (req) {
			struct request *next = req->next;
			req->tx_count = req->reissue_count = 0;
			req->ns = NULL;
			/* ???? What to do about searches? */
			(void) FUNC5(&req->timeout_event);
			req->trans_id = 0;
			req->transmit_me = 0;

			base->global_requests_waiting++;
			FUNC3(req, &base->req_waiting_head);
			/* We want to insert these suspended elements at the front of
			 * the waiting queue, since they were pending before any of
			 * the waiting entries were added.  This is a circular list,
			 * so we can just shift the start back by one.*/
			base->req_waiting_head = base->req_waiting_head->prev;

			if (next == req_started_at)
				break;
			req = next;
		}
		base->req_heads[i] = NULL;
	}

	base->global_requests_inflight = 0;

	FUNC1(base);
	return 0;
}