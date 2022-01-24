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
struct option {int dummy; } ;

/* Variables and functions */
 int FLAG_RELAY ; 
 int FLAG_SPAWN ; 
 struct option FUNC0 () ; 
 struct option FUNC1 (int /*<<< orphan*/ ,char*,int*,char*) ; 
 struct option FUNC2 (int /*<<< orphan*/ ,char*,char**,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int,int) ; 
 char* FUNC5 () ; 
 int FUNC6 (int,char const**,int /*<<< orphan*/ *,struct option*,char const* const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char const* const*,struct option*) ; 

int FUNC9(int argc, const char **argv)
{
	char *socket_path = NULL;
	int timeout = 900;
	const char *op;
	const char * const usage[] = {
		"git credential-cache [<options>] <action>",
		NULL
	};
	struct option options[] = {
		FUNC1(0, "timeout", &timeout,
			    "number of seconds to cache credentials"),
		FUNC2(0, "socket", &socket_path, "path",
			   "path of cache-daemon socket"),
		FUNC0()
	};

	argc = FUNC6(argc, argv, NULL, options, usage, 0);
	if (!argc)
		FUNC8(usage, options);
	op = argv[0];

	if (!socket_path)
		socket_path = FUNC5();
	if (!socket_path)
		FUNC3("unable to find a suitable socket path; use --socket");

	if (!FUNC7(op, "exit"))
		FUNC4(socket_path, op, timeout, 0);
	else if (!FUNC7(op, "get") || !FUNC7(op, "erase"))
		FUNC4(socket_path, op, timeout, FLAG_RELAY);
	else if (!FUNC7(op, "store"))
		FUNC4(socket_path, op, timeout, FLAG_RELAY|FLAG_SPAWN);
	else
		; /* ignore unknown operation */

	return 0;
}