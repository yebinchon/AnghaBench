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
typedef  int /*<<< orphan*/  strport ;
typedef  int /*<<< orphan*/  ntop ;
typedef  int /*<<< orphan*/  ev_socklen_t ;

/* Variables and functions */
 int EAI_SYSTEM ; 
 int NI_MAXHOST ; 
 int NI_MAXSERV ; 
 int NI_NUMERICHOST ; 
 int NI_NUMERICSERV ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sockaddr*,int /*<<< orphan*/ ,char*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct sockaddr*,int /*<<< orphan*/ ,char*,int,char*,int,int) ; 
 char* FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(struct sockaddr *sa, ev_socklen_t salen,
    char **phost, char **pport)
{
	char ntop[NI_MAXHOST];
	char strport[NI_MAXSERV];
	int ni_result;

#ifdef EVENT__HAVE_GETNAMEINFO
	ni_result = getnameinfo(sa, salen,
		ntop, sizeof(ntop), strport, sizeof(strport),
		NI_NUMERICHOST|NI_NUMERICSERV);

	if (ni_result != 0) {
#ifdef EAI_SYSTEM
		/* Windows doesn't have an EAI_SYSTEM. */
		if (ni_result == EAI_SYSTEM)
			event_err(1, "getnameinfo failed");
		else
#endif
			event_errx(1, "getnameinfo failed: %s", gai_strerror(ni_result));
		return;
	}
#else
	ni_result = FUNC2(sa, salen,
		ntop, sizeof(ntop), strport, sizeof(strport),
		NI_NUMERICHOST|NI_NUMERICSERV);
	if (ni_result != 0)
			return;
#endif

	*phost = FUNC5(ntop);
	*pport = FUNC5(strport);
}