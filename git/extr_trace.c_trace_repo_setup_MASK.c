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
 char const* FUNC1 () ; 
 char const* FUNC2 () ; 
 char* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trace_setup_key ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 () ; 

void FUNC8(const char *prefix)
{
	const char *git_work_tree;
	char *cwd;

	if (!FUNC6(&trace_setup_key))
		return;

	cwd = FUNC7();

	if (!(git_work_tree = FUNC3()))
		git_work_tree = "(null)";

	if (!prefix)
		prefix = "(null)";

	FUNC5(&trace_setup_key, "setup: git_dir: %s\n", FUNC4(FUNC2()));
	FUNC5(&trace_setup_key, "setup: git_common_dir: %s\n", FUNC4(FUNC1()));
	FUNC5(&trace_setup_key, "setup: worktree: %s\n", FUNC4(git_work_tree));
	FUNC5(&trace_setup_key, "setup: cwd: %s\n", FUNC4(cwd));
	FUNC5(&trace_setup_key, "setup: prefix: %s\n", FUNC4(prefix));

	FUNC0(cwd);
}