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
struct hostinfo {int saw_extended_args; scalar_t__ hostname_lookup_done; int /*<<< orphan*/  hostname; int /*<<< orphan*/  tcp_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char**,char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 

__attribute__((used)) static char *FUNC7(struct hostinfo *hi, char *extra_args, int buflen)
{
	char *val;
	int vallen;
	char *end = extra_args + buflen;

	if (extra_args < end && *extra_args) {
		hi->saw_extended_args = 1;
		if (FUNC6("host=", extra_args, 5) == 0) {
			val = extra_args + 5;
			vallen = FUNC5(val) + 1;
			FUNC2("Extended attribute \"host\": %s", val);
			if (*val) {
				/* Split <host>:<port> at colon. */
				char *host;
				char *port;
				FUNC3(val, &host, &port);
				if (port)
					FUNC4(&hi->tcp_port, port);
				FUNC0(&hi->hostname, host);
				hi->hostname_lookup_done = 0;
			}

			/* On to the next one */
			extra_args = val + vallen;
		}
		if (extra_args < end && *extra_args)
			FUNC1("Invalid request");
	}

	return extra_args;
}