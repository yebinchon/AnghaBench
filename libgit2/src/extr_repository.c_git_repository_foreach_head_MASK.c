#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {size_t count; int /*<<< orphan*/ * strings; } ;
typedef  TYPE_1__ git_strarray ;
typedef  int (* git_repository_foreach_head_cb ) (TYPE_2__*,int /*<<< orphan*/ ,void*) ;
struct TYPE_17__ {int /*<<< orphan*/  commondir; } ;
typedef  TYPE_2__ git_repository ;
struct TYPE_18__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_4__ git_buf ;

/* Variables and functions */
 TYPE_4__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_HEAD_FILE ; 
 int GIT_REPOSITORY_FOREACH_HEAD_SKIP_REPO ; 
 int GIT_REPOSITORY_FOREACH_HEAD_SKIP_WORKTREES ; 
 TYPE_1__ GIT_VECTOR_INIT ; 
 scalar_t__ FUNC0 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,TYPE_2__*) ; 

int FUNC5(git_repository *repo,
				git_repository_foreach_head_cb cb,
				int flags, void *payload)
{
	git_strarray worktrees = GIT_VECTOR_INIT;
	git_buf path = GIT_BUF_INIT;
	int error = 0;
	size_t i;


	if (!(flags & GIT_REPOSITORY_FOREACH_HEAD_SKIP_REPO)) {
		/* Gather HEAD of main repository */
		if ((error = FUNC2(&path, repo->commondir, GIT_HEAD_FILE)) < 0 ||
		    (error = cb(repo, path.ptr, payload) != 0))
			goto out;
	}

	if (!(flags & GIT_REPOSITORY_FOREACH_HEAD_SKIP_WORKTREES)) {
		if ((error = FUNC4(&worktrees, repo)) < 0) {
			error = 0;
			goto out;
		}

		/* Gather HEADs of all worktrees */
		for (i = 0; i < worktrees.count; i++) {
			if (FUNC0(&path, repo, worktrees.strings[i], GIT_HEAD_FILE) < 0)
				continue;

			if ((error = cb(repo, path.ptr, payload)) != 0)
				goto out;
		}
	}

out:
	FUNC1(&path);
	FUNC3(&worktrees);
	return error;
}