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
struct child_process {int git_cmd; int no_stdin; int out; char const* dir; int /*<<< orphan*/  env_array; int /*<<< orphan*/  args; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 struct strbuf STRBUF_INIT ; 
 unsigned int SUBMODULE_REMOVAL_DIE_ON_ERROR ; 
 unsigned int SUBMODULE_REMOVAL_IGNORE_IGNORED_UNTRACKED ; 
 unsigned int SUBMODULE_REMOVAL_IGNORE_UNTRACKED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (struct child_process*) ; 
 scalar_t__ FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct child_process*) ; 
 int FUNC10 (struct strbuf*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 

int FUNC13(const char *path, unsigned flags)
{
	ssize_t len;
	struct child_process cp = CHILD_PROCESS_INIT;
	struct strbuf buf = STRBUF_INIT;
	int ret = 0;

	if (!FUNC5(path) || FUNC7(path))
		return 0;

	if (!FUNC12(path))
		return 1;

	FUNC2(&cp.args, "status", "--porcelain",
				   "--ignore-submodules=none", NULL);

	if (flags & SUBMODULE_REMOVAL_IGNORE_UNTRACKED)
		FUNC1(&cp.args, "-uno");
	else
		FUNC1(&cp.args, "-uall");

	if (!(flags & SUBMODULE_REMOVAL_IGNORE_IGNORED_UNTRACKED))
		FUNC1(&cp.args, "--ignored");

	FUNC8(&cp.env_array);
	cp.git_cmd = 1;
	cp.no_stdin = 1;
	cp.out = -1;
	cp.dir = path;
	if (FUNC9(&cp)) {
		if (flags & SUBMODULE_REMOVAL_DIE_ON_ERROR)
			FUNC4(FUNC0("could not start 'git status' in submodule '%s'"),
				path);
		ret = -1;
		goto out;
	}

	len = FUNC10(&buf, cp.out, 1024);
	if (len > 2)
		ret = 1;
	FUNC3(cp.out);

	if (FUNC6(&cp)) {
		if (flags & SUBMODULE_REMOVAL_DIE_ON_ERROR)
			FUNC4(FUNC0("could not run 'git status' in submodule '%s'"),
				path);
		ret = -1;
	}
out:
	FUNC11(&buf);
	return ret;
}