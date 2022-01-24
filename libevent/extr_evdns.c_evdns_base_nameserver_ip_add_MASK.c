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
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct evdns_base {int dummy; } ;
typedef  int /*<<< orphan*/  ss ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdns_base*) ; 
 int /*<<< orphan*/  EVDNS_LOG_WARN ; 
 int /*<<< orphan*/  FUNC1 (struct evdns_base*) ; 
 int FUNC2 (struct evdns_base*,struct sockaddr*,int) ; 
 scalar_t__ FUNC3 (char const*,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC5 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr*,int) ; 

int
FUNC7(struct evdns_base *base, const char *ip_as_string) {
	struct sockaddr_storage ss;
	struct sockaddr *sa;
	int len = sizeof(ss);
	int res;
	if (FUNC3(ip_as_string, (struct sockaddr *)&ss,
		&len)) {
		FUNC4(EVDNS_LOG_WARN, "Unable to parse nameserver address %s",
			ip_as_string);
		return 4;
	}
	sa = (struct sockaddr *) &ss;
	if (FUNC5(sa) == 0)
		FUNC6(sa, 53);

	FUNC0(base);
	res = FUNC2(base, sa, len);
	FUNC1(base);
	return res;
}