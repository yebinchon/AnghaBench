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
struct evutil_addrinfo {int ai_flags; int ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  strport ;
typedef  int /*<<< orphan*/  hints ;
typedef  int /*<<< orphan*/  ev_uint16_t ;
typedef  scalar_t__ ev_socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int EVUTIL_AI_ADDRCONFIG ; 
 int EVUTIL_AI_PASSIVE ; 
 int NI_MAXSERV ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct evutil_addrinfo*) ; 
 int FUNC1 (char const*,char*,struct evutil_addrinfo*,struct evutil_addrinfo**) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct evutil_addrinfo*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ev_socklen_t
FUNC5(struct sockaddr_storage *ss, const char *address, ev_uint16_t port)
{
	struct evutil_addrinfo *ai = NULL;
	struct evutil_addrinfo hints;
	char strport[NI_MAXSERV];
	int ai_result;
	ev_socklen_t ret = 0;

	FUNC4(&hints, 0, sizeof(hints));
	hints.ai_family = AF_UNSPEC;
	hints.ai_socktype = SOCK_STREAM;
	hints.ai_flags = EVUTIL_AI_PASSIVE|EVUTIL_AI_ADDRCONFIG;
	FUNC2(strport, sizeof(strport), "%d", port);
	if ((ai_result = FUNC1(address, strport, &hints, &ai)) != 0) {
		return 0;
	}
	if (!ai)
		return 0;
	if (ai->ai_addrlen > sizeof(*ss)) {
		FUNC0(ai);
		return 0;
	}

	FUNC3(ss, ai->ai_addr, ai->ai_addrlen);
	/** Hm.. I do not like this cast. */
	ret = (ev_socklen_t)ai->ai_addrlen;
	FUNC0(ai);
	return ret;
}