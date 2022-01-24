#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {void* workdir; int /*<<< orphan*/  gitdir; scalar_t__ is_worktree; scalar_t__ is_bare; } ;
typedef  TYPE_1__ git_repository ;
struct TYPE_16__ {scalar_t__ value; } ;
typedef  TYPE_2__ git_config_entry ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_17__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_3__ git_buf ;

/* Variables and functions */
 TYPE_3__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  GIT_GITDIR_FILE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_2__**,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_3__*) ; 
 char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(git_repository *repo, git_config *config, git_buf *parent_path)
{
	int error;
	git_config_entry *ce;
	git_buf worktree = GIT_BUF_INIT;
	git_buf path = GIT_BUF_INIT;

	if (repo->is_bare)
		return 0;

	if ((error = FUNC4(
			&ce, config, "core.worktree", false)) < 0)
		return error;

	if (repo->is_worktree) {
		char *gitlink = FUNC10(repo->gitdir, GIT_GITDIR_FILE);
		if (!gitlink) {
			error = -1;
			goto cleanup;
		}

		FUNC1(&worktree, gitlink, 0);

		if ((FUNC6(&worktree, worktree.ptr)) < 0 ||
		    FUNC9(&worktree) < 0) {
			error = -1;
			goto cleanup;
		}

		repo->workdir = FUNC2(&worktree);
	}
	else if (ce && ce->value) {
		if ((error = FUNC8(
				&worktree, ce->value, repo->gitdir)) < 0)
			goto cleanup;

		repo->workdir = FUNC2(&worktree);
	}
	else if (parent_path && FUNC7(parent_path->ptr))
		repo->workdir = FUNC2(parent_path);
	else {
		if (FUNC6(&worktree, repo->gitdir) < 0 ||
		    FUNC9(&worktree) < 0) {
			error = -1;
			goto cleanup;
		}

		repo->workdir = FUNC2(&worktree);
	}

	FUNC0(repo->workdir);
cleanup:
	FUNC3(&path);
	FUNC5(ce);
	return error;
}