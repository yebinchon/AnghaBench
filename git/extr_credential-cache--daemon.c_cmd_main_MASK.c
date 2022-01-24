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
struct tempfile {int dummy; } ;
struct option {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option const FUNC1 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 struct option const FUNC2 () ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC3 (struct tempfile**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int FUNC8 (int,char const**,int /*<<< orphan*/ *,struct option const*,char const**,int /*<<< orphan*/ ) ; 
 struct tempfile* FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char const**,struct option const*) ; 

int FUNC13(int argc, const char **argv)
{
	struct tempfile *socket_file;
	const char *socket_path;
	int ignore_sighup = 0;
	static const char *usage[] = {
		"git-credential-cache--daemon [opts] <socket_path>",
		NULL
	};
	int debug = 0;
	const struct option options[] = {
		FUNC1(0, "debug", &debug,
			 FUNC0("print debugging messages to stderr")),
		FUNC2()
	};

	FUNC5("credentialcache.ignoresighup", &ignore_sighup);

	argc = FUNC8(argc, argv, NULL, options, usage, 0);
	socket_path = argv[0];

	if (!socket_path)
		FUNC12(usage, options);

	if (!FUNC7(socket_path))
		FUNC4("socket directory must be an absolute path");

	FUNC6(socket_path);
	socket_file = FUNC9(socket_path);

	if (ignore_sighup)
		FUNC11(SIGHUP, SIG_IGN);

	FUNC10(socket_path, debug);
	FUNC3(&socket_file);

	return 0;
}