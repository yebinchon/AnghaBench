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
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BRANCH_LOCAL ; 
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_ERROR_REFERENCE ; 
 int /*<<< orphan*/  GIT_REFS_HEADS_DIR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/  const*) ; 
 int FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(
	git_reference **ref_out,
	git_repository *repository,
	const char *branch_name,
	const git_commit *commit,
	const char *from,
	int force)
{
	int is_unmovable_head = 0;
	git_reference *branch = NULL;
	git_buf canonical_branch_name = GIT_BUF_INIT,
			  log_message = GIT_BUF_INIT;
	int error = -1;
	int bare = FUNC13(repository);

	FUNC0(branch_name && commit && ref_out);
	FUNC0(FUNC10((const git_object *)commit) == repository);

	if (!FUNC1(branch_name, "HEAD")) {
		FUNC9(GIT_ERROR_REFERENCE, "'HEAD' is not a valid branch name");
		error = -1;
		goto cleanup;
	}

	if (force && !bare && FUNC3(&branch, repository, branch_name, GIT_BRANCH_LOCAL) == 0) {
		error = FUNC2(branch);
		FUNC12(branch);
		branch = NULL;

		if (error < 0)
			goto cleanup;

		is_unmovable_head = error;
	}

	if (is_unmovable_head && force) {
		FUNC9(GIT_ERROR_REFERENCE, "cannot force update branch '%s' as it is "
			"the current HEAD of the repository.", branch_name);
		error = -1;
		goto cleanup;
	}

	if (FUNC6(&canonical_branch_name, GIT_REFS_HEADS_DIR, branch_name) < 0)
		goto cleanup;

	if (FUNC7(&log_message, "branch: Created from %s", from) < 0)
		goto cleanup;

	error = FUNC11(&branch, repository,
		FUNC4(&canonical_branch_name), FUNC8(commit), force,
		FUNC4(&log_message));

	if (!error)
		*ref_out = branch;

cleanup:
	FUNC5(&canonical_branch_name);
	FUNC5(&log_message);
	return error;
}