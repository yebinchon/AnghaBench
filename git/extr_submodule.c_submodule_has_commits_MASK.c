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
struct strbuf {scalar_t__ len; } ;
struct repository {int dummy; } ;
struct oid_array {int dummy; } ;
struct has_commit_data {int member_1; char const* member_2; int result; struct repository* member_0; } ;
struct child_process {int git_cmd; int no_stdin; char const* dir; int /*<<< orphan*/  env_array; struct has_commit_data args; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 scalar_t__ GIT_MAX_HEXSZ ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  append_oid_to_argv ; 
 int /*<<< orphan*/  FUNC1 (struct has_commit_data*,char*,char*,char*,...) ; 
 scalar_t__ FUNC2 (struct child_process*,struct strbuf*,scalar_t__) ; 
 int /*<<< orphan*/  check_has_commit ; 
 int /*<<< orphan*/  FUNC3 (struct oid_array*,int /*<<< orphan*/ ,struct has_commit_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

__attribute__((used)) static int FUNC6(struct repository *r,
				 const char *path,
				 struct oid_array *commits)
{
	struct has_commit_data has_commit = { r, 1, path };

	/*
	 * Perform a cheap, but incorrect check for the existence of 'commits'.
	 * This is done by adding the submodule's object store to the in-core
	 * object store, and then querying for each commit's existence.  If we
	 * do not have the commit object anywhere, there is no chance we have
	 * it in the object store of the correct submodule and have it
	 * reachable from a ref, so we can fail early without spawning rev-list
	 * which is expensive.
	 */
	if (FUNC0(path))
		return 0;

	FUNC3(commits, check_has_commit, &has_commit);

	if (has_commit.result) {
		/*
		 * Even if the submodule is checked out and the commit is
		 * present, make sure it exists in the submodule's object store
		 * and that it is reachable from a ref.
		 */
		struct child_process cp = CHILD_PROCESS_INIT;
		struct strbuf out = STRBUF_INIT;

		FUNC1(&cp.args, "rev-list", "-n", "1", NULL);
		FUNC3(commits, append_oid_to_argv, &cp.args);
		FUNC1(&cp.args, "--not", "--all", NULL);

		FUNC4(&cp.env_array);
		cp.git_cmd = 1;
		cp.no_stdin = 1;
		cp.dir = path;

		if (FUNC2(&cp, &out, GIT_MAX_HEXSZ + 1) || out.len)
			has_commit.result = 0;

		FUNC5(&out);
	}

	return has_commit.result;
}