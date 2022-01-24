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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,char) ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static void FUNC3(char *hostport, char **host,
	char **port)
{
	if (*hostport == '[') {
		char *end;

		end = FUNC1(hostport, ']');
		if (!end)
			FUNC0("Invalid request ('[' without ']')");
		*end = '\0';
		*host = hostport + 1;
		if (!end[1])
			*port = NULL;
		else if (end[1] == ':')
			*port = end + 2;
		else
			FUNC0("Garbage after end of host part");
	} else {
		*host = hostport;
		*port = FUNC2(hostport, ':');
		if (*port) {
			**port = '\0';
			++*port;
		}
	}
}