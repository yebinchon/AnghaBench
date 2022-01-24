#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int is_bare; int /*<<< orphan*/ * workdir; scalar_t__ is_worktree; struct TYPE_5__* commondir; struct TYPE_5__* gitdir; } ;
typedef  TYPE_1__ git_repository ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  GIT_ERROR_REPOSITORY ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC7(
	git_repository **repo_ptr,
	const char *bare_path)
{
	int error;
	git_buf path = GIT_BUF_INIT, common_path = GIT_BUF_INIT;
	git_repository *repo = NULL;

	if ((error = FUNC4(&path, bare_path, NULL)) < 0)
		return error;

	if (!FUNC6(&path, &common_path)) {
		FUNC2(&path);
		FUNC2(&common_path);
		FUNC3(GIT_ERROR_REPOSITORY, "path is not a repository: %s", bare_path);
		return GIT_ENOTFOUND;
	}

	repo = FUNC5();
	FUNC0(repo);

	repo->gitdir = FUNC1(&path);
	FUNC0(repo->gitdir);
	repo->commondir = FUNC1(&common_path);
	FUNC0(repo->commondir);

	/* of course we're bare! */
	repo->is_bare = 1;
	repo->is_worktree = 0;
	repo->workdir = NULL;

	*repo_ptr = repo;
	return 0;
}