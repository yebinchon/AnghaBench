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
struct strbuf {char* buf; } ;
struct child_process {char const** argv; int no_stdin; int use_shell; int /*<<< orphan*/  env; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  TRAILER_ARG_STRING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct child_process*,struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  local_repo_env ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*) ; 
 char* FUNC4 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 char* FUNC8 (char*) ; 

__attribute__((used)) static char *FUNC9(const char *command, const char *arg)
{
	struct strbuf cmd = STRBUF_INIT;
	struct strbuf buf = STRBUF_INIT;
	struct child_process cp = CHILD_PROCESS_INIT;
	const char *argv[] = {NULL, NULL};
	char *result;

	FUNC3(&cmd, command);
	if (arg)
		FUNC6(&cmd, TRAILER_ARG_STRING, arg);

	argv[0] = cmd.buf;
	cp.argv = argv;
	cp.env = local_repo_env;
	cp.no_stdin = 1;
	cp.use_shell = 1;

	if (FUNC1(&cp, &buf, 1024)) {
		FUNC2(FUNC0("running trailer command '%s' failed"), cmd.buf);
		FUNC5(&buf);
		result = FUNC8("");
	} else {
		FUNC7(&buf);
		result = FUNC4(&buf, NULL);
	}

	FUNC5(&cmd);
	return result;
}