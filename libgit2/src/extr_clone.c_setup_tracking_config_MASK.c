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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_config ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(
	git_repository *repo,
	const char *branch_name,
	const char *remote_name,
	const char *merge_target)
{
	git_config *cfg;
	git_buf remote_key = GIT_BUF_INIT, merge_key = GIT_BUF_INIT;
	int error = -1;

	if (FUNC4(&cfg, repo) < 0)
		return -1;

	if (FUNC2(&remote_key, "branch.%s.remote", branch_name) < 0)
		goto cleanup;

	if (FUNC2(&merge_key, "branch.%s.merge", branch_name) < 0)
		goto cleanup;

	if (FUNC3(cfg, FUNC0(&remote_key), remote_name) < 0)
		goto cleanup;

	if (FUNC3(cfg, FUNC0(&merge_key), merge_target) < 0)
		goto cleanup;

	error = 0;

cleanup:
	FUNC1(&remote_key);
	FUNC1(&merge_key);
	return error;
}