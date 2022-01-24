#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {unsigned int is_worktree; int is_bare; struct TYPE_20__* commondir; struct TYPE_20__* gitlink; struct TYPE_20__* gitdir; } ;
typedef  TYPE_1__ git_repository ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_21__ {scalar_t__ size; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 unsigned int GIT_REPOSITORY_OPEN_BARE ; 
 unsigned int GIT_REPOSITORY_OPEN_FROM_ENV ; 
 int FUNC1 (TYPE_1__**,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*,char const*,unsigned int,char const*) ; 
 void* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ **,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC11 (unsigned int*,TYPE_1__*) ; 
 TYPE_1__* FUNC12 () ; 

int FUNC13(
	git_repository **repo_ptr,
	const char *start_path,
	unsigned int flags,
	const char *ceiling_dirs)
{
	int error;
	unsigned is_worktree;
	git_buf gitdir = GIT_BUF_INIT, workdir = GIT_BUF_INIT,
		gitlink = GIT_BUF_INIT, commondir = GIT_BUF_INIT;
	git_repository *repo = NULL;
	git_config *config = NULL;

	if (flags & GIT_REPOSITORY_OPEN_FROM_ENV)
		return FUNC1(repo_ptr, start_path);

	if (repo_ptr)
		*repo_ptr = NULL;

	error = FUNC3(
		&gitdir, &workdir, &gitlink, &commondir, start_path, flags, ceiling_dirs);

	if (error < 0 || !repo_ptr)
		goto cleanup;

	repo = FUNC12();
	FUNC0(repo);

	repo->gitdir = FUNC4(&gitdir);
	FUNC0(repo->gitdir);

	if (gitlink.size) {
		repo->gitlink = FUNC4(&gitlink);
		FUNC0(repo->gitlink);
	}
	if (commondir.size) {
		repo->commondir = FUNC4(&commondir);
		FUNC0(repo->commondir);
	}

	if ((error = FUNC11(&is_worktree, repo)) < 0)
		goto cleanup;
	repo->is_worktree = is_worktree;

	/*
	 * We'd like to have the config, but git doesn't particularly
	 * care if it's not there, so we need to deal with that.
	 */

	error = FUNC7(&config, repo);
	if (error < 0 && error != GIT_ENOTFOUND)
		goto cleanup;

	if (config && (error = FUNC2(config)) < 0)
		goto cleanup;

	if ((flags & GIT_REPOSITORY_OPEN_BARE) != 0)
		repo->is_bare = 1;
	else {

		if (config &&
		    ((error = FUNC9(repo, config)) < 0 ||
		     (error = FUNC10(repo, config, &workdir)) < 0))
			goto cleanup;
	}

cleanup:
	FUNC5(&gitdir);
	FUNC5(&workdir);
	FUNC5(&gitlink);
	FUNC5(&commondir);
	FUNC6(config);

	if (error < 0)
		FUNC8(repo);

	if (repo_ptr)
		*repo_ptr = repo;

	return error;
}