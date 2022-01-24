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
typedef  int /*<<< orphan*/  tv ;
struct timeval {int tv_sec; } ;
struct sockaddr {int dummy; } ;
struct evdns_base {int global_max_nameserver_timeout; int global_max_retransmits; int global_randomize_case; int global_outgoing_addrlen; int so_rcvbuf; int so_sndbuf; int /*<<< orphan*/  global_nameserver_probe_initial_timeout; int /*<<< orphan*/  global_outgoing_address; int /*<<< orphan*/  global_getaddrinfo_allow_skew; int /*<<< orphan*/  global_timeout; TYPE_1__* global_search_state; } ;
struct TYPE_2__ {int ndots; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdns_base*) ; 
 int DNS_OPTION_MISC ; 
 int DNS_OPTION_NAMESERVERS ; 
 int DNS_OPTION_SEARCH ; 
 int /*<<< orphan*/  EVDNS_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (struct evdns_base*,int const) ; 
 int FUNC2 (char const*,struct timeval*) ; 
 scalar_t__ FUNC3 (char const*,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct timeval*,int) ; 
 TYPE_1__* FUNC6 () ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 void* FUNC8 (char const*) ; 
 int FUNC9 (char const*,int,int) ; 

__attribute__((used)) static int
FUNC10(struct evdns_base *base,
    const char *option, const char *val, int flags)
{
	FUNC0(base);
	if (FUNC7(option, "ndots:")) {
		const int ndots = FUNC8(val);
		if (ndots == -1) return -1;
		if (!(flags & DNS_OPTION_SEARCH)) return 0;
		FUNC4(EVDNS_LOG_DEBUG, "Setting ndots to %d", ndots);
		if (!base->global_search_state) base->global_search_state = FUNC6();
		if (!base->global_search_state) return -1;
		base->global_search_state->ndots = ndots;
	} else if (FUNC7(option, "timeout:")) {
		struct timeval tv;
		if (FUNC2(val, &tv) == -1) return -1;
		if (!(flags & DNS_OPTION_MISC)) return 0;
		FUNC4(EVDNS_LOG_DEBUG, "Setting timeout to %s", val);
		FUNC5(&base->global_timeout, &tv, sizeof(struct timeval));
	} else if (FUNC7(option, "getaddrinfo-allow-skew:")) {
		struct timeval tv;
		if (FUNC2(val, &tv) == -1) return -1;
		if (!(flags & DNS_OPTION_MISC)) return 0;
		FUNC4(EVDNS_LOG_DEBUG, "Setting getaddrinfo-allow-skew to %s",
		    val);
		FUNC5(&base->global_getaddrinfo_allow_skew, &tv,
		    sizeof(struct timeval));
	} else if (FUNC7(option, "max-timeouts:")) {
		const int maxtimeout = FUNC9(val, 1, 255);
		if (maxtimeout == -1) return -1;
		if (!(flags & DNS_OPTION_MISC)) return 0;
		FUNC4(EVDNS_LOG_DEBUG, "Setting maximum allowed timeouts to %d",
			maxtimeout);
		base->global_max_nameserver_timeout = maxtimeout;
	} else if (FUNC7(option, "max-inflight:")) {
		const int maxinflight = FUNC9(val, 1, 65000);
		if (maxinflight == -1) return -1;
		if (!(flags & DNS_OPTION_MISC)) return 0;
		FUNC4(EVDNS_LOG_DEBUG, "Setting maximum inflight requests to %d",
			maxinflight);
		FUNC1(base, maxinflight);
	} else if (FUNC7(option, "attempts:")) {
		int retries = FUNC8(val);
		if (retries == -1) return -1;
		if (retries > 255) retries = 255;
		if (!(flags & DNS_OPTION_MISC)) return 0;
		FUNC4(EVDNS_LOG_DEBUG, "Setting retries to %d", retries);
		base->global_max_retransmits = retries;
	} else if (FUNC7(option, "randomize-case:")) {
		int randcase = FUNC8(val);
		if (!(flags & DNS_OPTION_MISC)) return 0;
		base->global_randomize_case = randcase;
	} else if (FUNC7(option, "bind-to:")) {
		/* XXX This only applies to successive nameservers, not
		 * to already-configured ones.	We might want to fix that. */
		int len = sizeof(base->global_outgoing_address);
		if (!(flags & DNS_OPTION_NAMESERVERS)) return 0;
		if (FUNC3(val,
			(struct sockaddr*)&base->global_outgoing_address, &len))
			return -1;
		base->global_outgoing_addrlen = len;
	} else if (FUNC7(option, "initial-probe-timeout:")) {
		struct timeval tv;
		if (FUNC2(val, &tv) == -1) return -1;
		if (tv.tv_sec > 3600)
			tv.tv_sec = 3600;
		if (!(flags & DNS_OPTION_MISC)) return 0;
		FUNC4(EVDNS_LOG_DEBUG, "Setting initial probe timeout to %s",
		    val);
		FUNC5(&base->global_nameserver_probe_initial_timeout, &tv,
		    sizeof(tv));
	} else if (FUNC7(option, "so-rcvbuf:")) {
		int buf = FUNC8(val);
		if (!(flags & DNS_OPTION_MISC)) return 0;
		FUNC4(EVDNS_LOG_DEBUG, "Setting SO_RCVBUF to %s", val);
		base->so_rcvbuf = buf;
	} else if (FUNC7(option, "so-sndbuf:")) {
		int buf = FUNC8(val);
		if (!(flags & DNS_OPTION_MISC)) return 0;
		FUNC4(EVDNS_LOG_DEBUG, "Setting SO_SNDBUF to %s", val);
		base->so_sndbuf = buf;
	}
	return 0;
}