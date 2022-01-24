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
typedef  int /*<<< orphan*/  git_remote ;
typedef  int /*<<< orphan*/  git_refspec ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_config ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BRANCH_LOCAL ; 
 int /*<<< orphan*/  GIT_BRANCH_REMOTE ; 
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_REFERENCE ; 
 int /*<<< orphan*/  GIT_REFS_HEADS_DIR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,char const*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC18 (char const*) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ *,char const*) ; 

int FUNC21(git_reference *branch, const char *upstream_name)
{
	git_buf key = GIT_BUF_INIT, value = GIT_BUF_INIT;
	git_reference *upstream;
	git_repository *repo;
	git_remote *remote = NULL;
	git_config *config;
	const char *name, *shortname;
	int local, error;
	const git_refspec *fetchspec;

	name = FUNC11(branch);
	if (!FUNC9(name))
		return FUNC18(name);

	if (FUNC17(&config, FUNC12(branch)) < 0)
		return -1;

	shortname = name + FUNC19(GIT_REFS_HEADS_DIR);

	if (upstream_name == NULL)
		return FUNC20(config, shortname);

	repo = FUNC12(branch);

	/* First we need to figure out whether it's a branch or remote-tracking */
	if (FUNC0(&upstream, repo, upstream_name, GIT_BRANCH_LOCAL) == 0)
		local = 1;
	else if (FUNC0(&upstream, repo, upstream_name, GIT_BRANCH_REMOTE) == 0)
		local = 0;
	else {
		FUNC8(GIT_ERROR_REFERENCE,
			"cannot set upstream for branch '%s'", shortname);
		return GIT_ENOTFOUND;
	}

	/*
	 * If it's local, the remote is "." and the branch name is
	 * simply the refname. Otherwise we need to figure out what
	 * the remote-tracking branch's name on the remote is and use
	 * that.
	 */
	if (local)
		error = FUNC6(&value, ".");
	else
		error = FUNC1(&value, repo, FUNC11(upstream));

	if (error < 0)
		goto on_error;

	if (FUNC5(&key, "branch.%s.remote", shortname) < 0)
		goto on_error;

	if (FUNC7(config, FUNC3(&key), FUNC3(&value)) < 0)
		goto on_error;

	if (local) {
		FUNC2(&value);
		if (FUNC6(&value, FUNC11(upstream)) < 0)
			goto on_error;
	} else {
		/* Get the remoe-tracking branch's refname in its repo */
		if (FUNC16(&remote, repo, FUNC3(&value)) < 0)
			goto on_error;

		fetchspec = FUNC14(remote, FUNC11(upstream));
		FUNC2(&value);
		if (!fetchspec || FUNC13(&value, fetchspec, FUNC11(upstream)) < 0)
			goto on_error;

		FUNC15(remote);
		remote = NULL;
	}

	FUNC2(&key);
	if (FUNC5(&key, "branch.%s.merge", shortname) < 0)
		goto on_error;

	if (FUNC7(config, FUNC3(&key), FUNC3(&value)) < 0)
		goto on_error;

	FUNC10(upstream);
	FUNC4(&key);
	FUNC4(&value);

	return 0;

on_error:
	FUNC10(upstream);
	FUNC4(&key);
	FUNC4(&value);
	FUNC15(remote);

	return -1;
}