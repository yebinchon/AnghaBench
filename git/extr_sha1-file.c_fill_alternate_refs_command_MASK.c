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
struct child_process {int use_shell; int git_cmd; int out; int /*<<< orphan*/  env; int /*<<< orphan*/  args; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const**) ; 
 int /*<<< orphan*/  local_repo_env ; 

__attribute__((used)) static void FUNC4(struct child_process *cmd,
					const char *repo_path)
{
	const char *value;

	if (!FUNC3("core.alternateRefsCommand", &value)) {
		cmd->use_shell = 1;

		FUNC0(&cmd->args, value);
		FUNC0(&cmd->args, repo_path);
	} else {
		cmd->git_cmd = 1;

		FUNC1(&cmd->args, "--git-dir=%s", repo_path);
		FUNC0(&cmd->args, "for-each-ref");
		FUNC0(&cmd->args, "--format=%(objectname)");

		if (!FUNC3("core.alternateRefsPrefixes", &value)) {
			FUNC0(&cmd->args, "--");
			FUNC2(&cmd->args, value);
		}
	}

	cmd->env = local_repo_env;
	cmd->out = -1;
}