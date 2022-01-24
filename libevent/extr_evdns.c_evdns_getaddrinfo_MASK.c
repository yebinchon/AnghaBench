#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  struct evutil_addrinfo {int ai_flags; scalar_t__ ai_family; } const evutil_addrinfo ;
struct TYPE_8__ {TYPE_2__* r; int /*<<< orphan*/  type; } ;
struct evdns_getaddrinfo_request {TYPE_3__ ipv6_request; TYPE_3__ ipv4_request; int /*<<< orphan*/  timeout; int /*<<< orphan*/  cname_result; struct evdns_base* evdns_base; void* user_data; int /*<<< orphan*/  (* user_cb ) (int,struct evutil_addrinfo const*,void*) ;int /*<<< orphan*/  port; struct evutil_addrinfo const hints; } ;
struct evdns_base {int /*<<< orphan*/  event_base; } ;
typedef  int /*<<< orphan*/  hints ;
typedef  int /*<<< orphan*/  (* evdns_getaddrinfo_cb ) (int,struct evutil_addrinfo const*,void*) ;
typedef  int /*<<< orphan*/  ev_uint16_t ;
struct TYPE_7__ {TYPE_1__* current_req; } ;
struct TYPE_6__ {int /*<<< orphan*/ * put_cname_in_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DNS_IPv4_A ; 
 int /*<<< orphan*/  DNS_IPv6_AAAA ; 
 int /*<<< orphan*/  FUNC0 (struct evdns_base*) ; 
 int /*<<< orphan*/  EVDNS_LOG_DEBUG ; 
 int /*<<< orphan*/  EVDNS_LOG_WARN ; 
 int /*<<< orphan*/  FUNC1 (struct evdns_base*) ; 
 int EVUTIL_AI_CANONNAME ; 
 int EVUTIL_AI_NUMERICHOST ; 
 int EVUTIL_EAI_FAIL ; 
 int EVUTIL_EAI_MEMORY ; 
 int EVUTIL_EAI_NEED_RESOLVE ; 
 scalar_t__ PF_INET ; 
 scalar_t__ PF_INET6 ; 
 scalar_t__ PF_UNSPEC ; 
 struct evdns_base* current_base ; 
 TYPE_2__* FUNC2 (struct evdns_base*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_2__* FUNC3 (struct evdns_base*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct evdns_base*,char const*,struct evutil_addrinfo const*,int,struct evutil_addrinfo const**) ; 
 int /*<<< orphan*/  evdns_getaddrinfo_gotresolve ; 
 int /*<<< orphan*/  evdns_getaddrinfo_timeout_cb ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct evdns_getaddrinfo_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct evutil_addrinfo const*) ; 
 int FUNC7 (char const*,char const*,struct evutil_addrinfo const*,struct evutil_addrinfo const**) ; 
 int FUNC8 (char const*,char const*,struct evutil_addrinfo const*,struct evutil_addrinfo const**,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct evutil_addrinfo const*,struct evutil_addrinfo const*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct evutil_addrinfo const*,int /*<<< orphan*/ ,int) ; 
 struct evdns_getaddrinfo_request* FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct evdns_getaddrinfo_request*) ; 

struct evdns_getaddrinfo_request *
FUNC14(struct evdns_base *dns_base,
    const char *nodename, const char *servname,
    const struct evutil_addrinfo *hints_in,
    evdns_getaddrinfo_cb cb, void *arg)
{
	struct evdns_getaddrinfo_request *data;
	struct evutil_addrinfo hints;
	struct evutil_addrinfo *res = NULL;
	int err;
	int port = 0;
	int want_cname = 0;
	int started = 0;

	if (!dns_base) {
		dns_base = current_base;
		if (!dns_base) {
			FUNC9(EVDNS_LOG_WARN,
			    "Call to getaddrinfo_async with no "
			    "evdns_base configured.");
			cb(EVUTIL_EAI_FAIL, NULL, arg); /* ??? better error? */
			return NULL;
		}
	}

	/* If we _must_ answer this immediately, do so. */
	if ((hints_in && (hints_in->ai_flags & EVUTIL_AI_NUMERICHOST))) {
		res = NULL;
		err = FUNC7(nodename, servname, hints_in, &res);
		cb(err, res, arg);
		return NULL;
	}

	if (hints_in) {
		FUNC10(&hints, hints_in, sizeof(hints));
	} else {
		FUNC11(&hints, 0, sizeof(hints));
		hints.ai_family = PF_UNSPEC;
	}

	FUNC6(&hints);

	/* Now try to see if we _can_ answer immediately. */
	/* (It would be nice to do this by calling getaddrinfo directly, with
	 * AI_NUMERICHOST, on plaforms that have it, but we can't: there isn't
	 * a reliable way to distinguish the "that wasn't a numeric host!" case
	 * from any other EAI_NONAME cases.) */
	err = FUNC8(nodename, servname, &hints, &res, &port);
	if (err != EVUTIL_EAI_NEED_RESOLVE) {
		cb(err, res, arg);
		return NULL;
	}

	/* If there is an entry in the hosts file, we should give it now. */
	if (!FUNC4(dns_base, nodename, &hints, port, &res)) {
		cb(0, res, arg);
		return NULL;
	}

	/* Okay, things are serious now. We're going to need to actually
	 * launch a request.
	 */
	data = FUNC12(1,sizeof(struct evdns_getaddrinfo_request));
	if (!data) {
		cb(EVUTIL_EAI_MEMORY, NULL, arg);
		return NULL;
	}

	FUNC10(&data->hints, &hints, sizeof(data->hints));
	data->port = (ev_uint16_t)port;
	data->ipv4_request.type = DNS_IPv4_A;
	data->ipv6_request.type = DNS_IPv6_AAAA;
	data->user_cb = cb;
	data->user_data = arg;
	data->evdns_base = dns_base;

	want_cname = (hints.ai_flags & EVUTIL_AI_CANONNAME);

	/* If we are asked for a PF_UNSPEC address, we launch two requests in
	 * parallel: one for an A address and one for an AAAA address.  We
	 * can't send just one request, since many servers only answer one
	 * question per DNS request.
	 *
	 * Once we have the answer to one request, we allow for a short
	 * timeout before we report it, to see if the other one arrives.  If
	 * they both show up in time, then we report both the answers.
	 *
	 * If too many addresses of one type time out or fail, we should stop
	 * launching those requests. (XXX we don't do that yet.)
	 */

	FUNC0(dns_base);

	if (hints.ai_family != PF_INET6) {
		FUNC9(EVDNS_LOG_DEBUG, "Sending request for %s on ipv4 as %p",
		    nodename, &data->ipv4_request);

		data->ipv4_request.r = FUNC2(dns_base,
		    nodename, 0, evdns_getaddrinfo_gotresolve,
		    &data->ipv4_request);
		if (want_cname && data->ipv4_request.r)
			data->ipv4_request.r->current_req->put_cname_in_ptr =
			    &data->cname_result;
	}
	if (hints.ai_family != PF_INET) {
		FUNC9(EVDNS_LOG_DEBUG, "Sending request for %s on ipv6 as %p",
		    nodename, &data->ipv6_request);

		data->ipv6_request.r = FUNC3(dns_base,
		    nodename, 0, evdns_getaddrinfo_gotresolve,
		    &data->ipv6_request);
		if (want_cname && data->ipv6_request.r)
			data->ipv6_request.r->current_req->put_cname_in_ptr =
			    &data->cname_result;
	}

	FUNC5(&data->timeout, dns_base->event_base,
	    evdns_getaddrinfo_timeout_cb, data);

	started = (data->ipv4_request.r || data->ipv6_request.r);

	FUNC1(dns_base);

	if (started) {
		return data;
	} else {
		FUNC13(data);
		cb(EVUTIL_EAI_FAIL, NULL, arg);
		return NULL;
	}
}