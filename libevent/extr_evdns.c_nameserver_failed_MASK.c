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
struct sockaddr {int dummy; } ;
struct request {scalar_t__ tx_count; struct request* next; struct nameserver* const ns; } ;
struct nameserver {int failed_times; int /*<<< orphan*/  address; int /*<<< orphan*/  timeout_event; scalar_t__ state; struct evdns_base* base; } ;
struct evdns_base {scalar_t__ global_good_nameservers; int n_req_heads; struct request** req_heads; int /*<<< orphan*/  global_nameserver_probe_initial_timeout; } ;
typedef  int /*<<< orphan*/  addrbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdns_base*) ; 
 int /*<<< orphan*/  EVDNS_LOG_MSG ; 
 int /*<<< orphan*/  EVDNS_LOG_WARN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct evdns_base*) ; 
 int /*<<< orphan*/  FUNC6 (struct request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct nameserver *const ns, const char *msg) {
	struct request *req, *started_at;
	struct evdns_base *base = ns->base;
	int i;
	char addrbuf[128];

	FUNC0(base);
	/* if this nameserver has already been marked as failed */
	/* then don't do anything */
	if (!ns->state) return;

	FUNC4(EVDNS_LOG_MSG, "Nameserver %s has failed: %s",
	    FUNC3(
		    (struct sockaddr *)&ns->address,
		    addrbuf, sizeof(addrbuf)),
	    msg);

	base->global_good_nameservers--;
	FUNC1(base->global_good_nameservers >= 0);
	if (base->global_good_nameservers == 0) {
		FUNC4(EVDNS_LOG_MSG, "All nameservers have failed");
	}

	ns->state = 0;
	ns->failed_times = 1;

	if (FUNC2(&ns->timeout_event,
		&base->global_nameserver_probe_initial_timeout) < 0) {
		FUNC4(EVDNS_LOG_WARN,
		    "Error from libevent when adding timer event for %s",
		    FUNC3(
			    (struct sockaddr *)&ns->address,
			    addrbuf, sizeof(addrbuf)));
		/* ???? Do more? */
	}

	/* walk the list of inflight requests to see if any can be reassigned to */
	/* a different server. Requests in the waiting queue don't have a */
	/* nameserver assigned yet */

	/* if we don't have *any* good nameservers then there's no point */
	/* trying to reassign requests to one */
	if (!base->global_good_nameservers) return;

	for (i = 0; i < base->n_req_heads; ++i) {
		req = started_at = base->req_heads[i];
		if (req) {
			do {
				if (req->tx_count == 0 && req->ns == ns) {
					/* still waiting to go out, can be moved */
					/* to another server */
					FUNC6(req, FUNC5(base));
				}
				req = req->next;
			} while (req != started_at);
		}
	}
}