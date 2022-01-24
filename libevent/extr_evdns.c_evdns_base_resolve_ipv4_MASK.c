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
struct request {int dummy; } ;
struct evdns_request {int /*<<< orphan*/ * current_req; } ;
struct evdns_base {int dummy; } ;
typedef  int /*<<< orphan*/  evdns_callback_type ;

/* Variables and functions */
 int DNS_QUERY_NO_SEARCH ; 
 int /*<<< orphan*/  FUNC0 (struct evdns_base*) ; 
 int /*<<< orphan*/  EVDNS_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (struct evdns_base*) ; 
 int /*<<< orphan*/  TYPE_A ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 struct evdns_request* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct evdns_request*) ; 
 struct request* FUNC5 (struct evdns_base*,struct evdns_request*,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct request*) ; 
 int /*<<< orphan*/  FUNC7 (struct evdns_base*,struct evdns_request*,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,void*) ; 

struct evdns_request *
FUNC8(struct evdns_base *base, const char *name, int flags,
    evdns_callback_type callback, void *ptr) {
	struct evdns_request *handle;
	struct request *req;
	FUNC2(EVDNS_LOG_DEBUG, "Resolve requested for %s", name);
	handle = FUNC3(1, sizeof(*handle));
	if (handle == NULL)
		return NULL;
	FUNC0(base);
	if (flags & DNS_QUERY_NO_SEARCH) {
		req =
			FUNC5(base, handle, TYPE_A, name, flags,
				    callback, ptr);
		if (req)
			FUNC6(req);
	} else {
		FUNC7(base, handle, TYPE_A, name, flags,
		    callback, ptr);
	}
	if (handle->current_req == NULL) {
		FUNC4(handle);
		handle = NULL;
	}
	FUNC1(base);
	return handle;
}