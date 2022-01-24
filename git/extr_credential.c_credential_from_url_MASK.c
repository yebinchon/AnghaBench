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
struct credential {char* path; void* host; int /*<<< orphan*/  protocol; void* password; void* username; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct credential*) ; 
 char* FUNC1 (char const*,char) ; 
 char* FUNC2 (char const*,char) ; 
 int FUNC3 (char*) ; 
 char* FUNC4 (char const*,char*) ; 
 char* FUNC5 (char const*) ; 
 void* FUNC6 (char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int) ; 

void FUNC8(struct credential *c, const char *url)
{
	const char *at, *colon, *cp, *slash, *host, *proto_end;

	FUNC0(c);

	/*
	 * Match one of:
	 *   (1) proto://<host>/...
	 *   (2) proto://<user>@<host>/...
	 *   (3) proto://<user>:<pass>@<host>/...
	 */
	proto_end = FUNC4(url, "://");
	if (!proto_end)
		return;
	cp = proto_end + 3;
	at = FUNC1(cp, '@');
	colon = FUNC1(cp, ':');
	slash = FUNC2(cp, '/');

	if (!at || slash <= at) {
		/* Case (1) */
		host = cp;
	}
	else if (!colon || at <= colon) {
		/* Case (2) */
		c->username = FUNC6(cp, at - cp);
		host = at + 1;
	} else {
		/* Case (3) */
		c->username = FUNC6(cp, colon - cp);
		c->password = FUNC6(colon + 1, at - (colon + 1));
		host = at + 1;
	}

	if (proto_end - url > 0)
		c->protocol = FUNC7(url, proto_end - url);
	if (slash - host > 0)
		c->host = FUNC6(host, slash - host);
	/* Trim leading and trailing slashes from path */
	while (*slash == '/')
		slash++;
	if (*slash) {
		char *p;
		c->path = FUNC5(slash);
		p = c->path + FUNC3(c->path) - 1;
		while (p > c->path && *p == '/')
			*p-- = '\0';
	}
}