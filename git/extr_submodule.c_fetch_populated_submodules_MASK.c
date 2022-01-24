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
struct submodule_parallel_fetch {int command_line_option; int default_option; int quiet; char const* prefix; int result; int /*<<< orphan*/  changed_submodule_names; int /*<<< orphan*/  args; struct repository* r; } ;
struct repository {int /*<<< orphan*/  worktree; } ;
struct argv_array {int argc; char** argv; } ;

/* Variables and functions */
 struct submodule_parallel_fetch SPF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct repository*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  fetch_finish ; 
 int /*<<< orphan*/  fetch_start_failure ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  get_next_submodule ; 
 scalar_t__ FUNC5 (struct repository*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct submodule_parallel_fetch*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct repository *r,
			       const struct argv_array *options,
			       const char *prefix, int command_line_option,
			       int default_option,
			       int quiet, int max_parallel_jobs)
{
	int i;
	struct submodule_parallel_fetch spf = SPF_INIT;

	spf.r = r;
	spf.command_line_option = command_line_option;
	spf.default_option = default_option;
	spf.quiet = quiet;
	spf.prefix = prefix;

	if (!r->worktree)
		goto out;

	if (FUNC5(r) < 0)
		FUNC3("index file corrupt");

	FUNC1(&spf.args, "fetch");
	for (i = 0; i < options->argc; i++)
		FUNC1(&spf.args, options->argv[i]);
	FUNC1(&spf.args, "--recurse-submodules-default");
	/* default value, "--submodule-prefix" and its value are added later */

	FUNC2(r, &spf.changed_submodule_names);
	FUNC7(&spf.changed_submodule_names);
	FUNC6(max_parallel_jobs,
				   get_next_submodule,
				   fetch_start_failure,
				   fetch_finish,
				   &spf,
				   "submodule", "parallel/fetch");

	FUNC0(&spf.args);
out:
	FUNC4(&spf.changed_submodule_names);
	return spf.result;
}