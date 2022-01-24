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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct child_process {int no_stdin; int no_stderr; int out; int git_cmd; int /*<<< orphan*/  args; int /*<<< orphan*/  env_array; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  PATH_MAX ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,char*,char*,char*,char*,char*,char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,...) ; 
 int FUNC6 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (char*) ; 
 char* FUNC11 (char*) ; 
 char* FUNC12 (char const*,char const*,struct strbuf*) ; 
 scalar_t__ FUNC13 (struct child_process*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC15 (struct strbuf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC17 (struct strbuf*) ; 
 char* FUNC18 (int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC19 (char const*,char*) ; 
 int FUNC20 (char const*) ; 
 char* FUNC21 () ; 
 char* FUNC22 (char const*) ; 

const char *FUNC23(void)
{
	struct child_process cp = CHILD_PROCESS_INIT;
	struct strbuf sb = STRBUF_INIT;
	const char *one_up = FUNC11("../");
	const char *cwd = FUNC21();
	const char *ret = NULL;
	const char *subpath;
	int code;
	ssize_t len;

	if (!FUNC8())
		/*
		 * FIXME:
		 * We might have a superproject, but it is harder
		 * to determine.
		 */
		return NULL;

	if (!one_up)
		return NULL;

	subpath = FUNC12(cwd, one_up, &sb);

	FUNC9(&cp.env_array);
	FUNC2(&cp.env_array);

	FUNC3(&cp.args, "--literal-pathspecs", "-C", "..",
			"ls-files", "-z", "--stage", "--full-name", "--",
			subpath, NULL);
	FUNC17(&sb);

	cp.no_stdin = 1;
	cp.no_stderr = 1;
	cp.out = -1;
	cp.git_cmd = 1;

	if (FUNC13(&cp))
		FUNC5(FUNC1("could not start ls-files in .."));

	len = FUNC15(&sb, cp.out, PATH_MAX);
	FUNC4(cp.out);

	if (FUNC14(sb.buf, "160000")) {
		int super_sub_len;
		int cwd_len = FUNC20(cwd);
		char *super_sub, *super_wt;

		/*
		 * There is a superproject having this repo as a submodule.
		 * The format is <mode> SP <hash> SP <stage> TAB <full name> \0,
		 * We're only interested in the name after the tab.
		 */
		super_sub = FUNC18(sb.buf, '\t') + 1;
		super_sub_len = FUNC20(super_sub);

		if (super_sub_len > cwd_len ||
		    FUNC19(&cwd[cwd_len - super_sub_len], super_sub))
			FUNC0("returned path string doesn't match cwd?");

		super_wt = FUNC22(cwd);
		super_wt[cwd_len - super_sub_len] = '\0';

		ret = FUNC10(super_wt);
		FUNC7(super_wt);
	}
	FUNC16(&sb);

	code = FUNC6(&cp);

	if (code == 128)
		/* '../' is not a git repository */
		return NULL;
	if (code == 0 && len == 0)
		/* There is an unrelated git repository at '../' */
		return NULL;
	if (code)
		FUNC5(FUNC1("ls-tree returned unexpected return code %d"), code);

	return ret;
}