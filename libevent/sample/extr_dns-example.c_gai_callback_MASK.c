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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct evutil_addrinfo {char* ai_canonname; scalar_t__ ai_family; scalar_t__ ai_addr; struct evutil_addrinfo* ai_next; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 scalar_t__ PF_INET ; 
 int /*<<< orphan*/  FUNC0 (struct evutil_addrinfo*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4(int err, struct evutil_addrinfo *ai, void *arg)
{
	const char *name = arg;
	int i;
	struct evutil_addrinfo *first_ai = ai;

	if (err) {
		FUNC3("%s: %s\n", name, FUNC1(err));
	}
	if (ai && ai->ai_canonname)
		FUNC3("    %s ==> %s\n", name, ai->ai_canonname);
	for (i=0; ai; ai = ai->ai_next, ++i) {
		char buf[128];
		if (ai->ai_family == PF_INET) {
			struct sockaddr_in *sin =
			    (struct sockaddr_in*)ai->ai_addr;
			FUNC2(AF_INET, &sin->sin_addr, buf,
			    sizeof(buf));
			FUNC3("[%d] %s: %s\n",i,name,buf);
		} else {
			struct sockaddr_in6 *sin6 =
			    (struct sockaddr_in6*)ai->ai_addr;
			FUNC2(AF_INET6, &sin6->sin6_addr, buf,
			    sizeof(buf));
			FUNC3("[%d] %s: %s\n",i,name,buf);
		}
	}

	if (first_ai)
		FUNC0(first_ai);
}