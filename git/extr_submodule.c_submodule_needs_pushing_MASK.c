#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct repository {int dummy; } ;
struct oid_array {int dummy; } ;
struct child_process {int git_cmd; int no_stdin; int out; char const* dir; int /*<<< orphan*/  env_array; int /*<<< orphan*/  args; } ;
struct TYPE_2__ {scalar_t__ hexsz; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  append_oid_to_argv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct child_process*) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  has_remote ; 
 int /*<<< orphan*/  FUNC6 (struct oid_array*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct child_process*) ; 
 scalar_t__ FUNC9 (struct strbuf*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct repository*,char const*,struct oid_array*) ; 
 TYPE_1__* the_hash_algo ; 

__attribute__((used)) static int FUNC12(struct repository *r,
				   const char *path,
				   struct oid_array *commits)
{
	if (!FUNC11(r, path, commits))
		/*
		 * NOTE: We do consider it safe to return "no" here. The
		 * correct answer would be "We do not know" instead of
		 * "No push needed", but it is quite hard to change
		 * the submodule pointer without having the submodule
		 * around. If a user did however change the submodules
		 * without having the submodule around, this indicates
		 * an expert who knows what they are doing or a
		 * maintainer integrating work from other people. In
		 * both cases it should be safe to skip this check.
		 */
		return 0;

	if (FUNC5(path, has_remote, NULL) > 0) {
		struct child_process cp = CHILD_PROCESS_INIT;
		struct strbuf buf = STRBUF_INIT;
		int needs_pushing = 0;

		FUNC0(&cp.args, "rev-list");
		FUNC6(commits, append_oid_to_argv, &cp.args);
		FUNC1(&cp.args, "--not", "--remotes", "-n", "1" , NULL);

		FUNC7(&cp.env_array);
		cp.git_cmd = 1;
		cp.no_stdin = 1;
		cp.out = -1;
		cp.dir = path;
		if (FUNC8(&cp))
			FUNC3("Could not run 'git rev-list <commits> --not --remotes -n 1' command in submodule %s",
					path);
		if (FUNC9(&buf, cp.out, the_hash_algo->hexsz + 1))
			needs_pushing = 1;
		FUNC4(&cp);
		FUNC2(cp.out);
		FUNC10(&buf);
		return needs_pushing;
	}

	return 0;
}