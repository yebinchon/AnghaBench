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
struct strbuf {int dummy; } ;
struct hostent {scalar_t__ h_name; } ;
struct addrinfo {scalar_t__ ai_canonname; int /*<<< orphan*/  ai_flags; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AI_CANONNAME ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 struct hostent* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*,char,int) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,char) ; 

__attribute__((used)) static int FUNC6(const char *host, struct strbuf *out)
{
	int status = -1;

#ifndef NO_IPV6
	struct addrinfo hints, *ai;
	FUNC3 (&hints, '\0', sizeof (hints));
	hints.ai_flags = AI_CANONNAME;
	if (!FUNC1(host, NULL, &hints, &ai)) {
		if (ai && ai->ai_canonname && FUNC5(ai->ai_canonname, '.')) {
			FUNC4(out, ai->ai_canonname);
			status = 0;
		}
		FUNC0(ai);
	}
#else
	struct hostent *he = gethostbyname(host);
	if (he && strchr(he->h_name, '.')) {
		strbuf_addstr(out, he->h_name);
		status = 0;
	}
#endif /* NO_IPV6 */

	return status;
}