#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  gitdir; } ;
typedef  TYPE_1__ git_repository ;
typedef  scalar_t__ git_rebase_type_t ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 scalar_t__ GIT_REBASE_TYPE_APPLY ; 
 scalar_t__ GIT_REBASE_TYPE_MERGE ; 
 scalar_t__ GIT_REBASE_TYPE_NONE ; 
 int /*<<< orphan*/  REBASE_APPLY_DIR ; 
 int /*<<< orphan*/  REBASE_MERGE_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(
	git_rebase_type_t *type_out,
	char **path_out,
	git_repository *repo)
{
	git_buf path = GIT_BUF_INIT;
	git_rebase_type_t type = GIT_REBASE_TYPE_NONE;

	if (FUNC4(&path, repo->gitdir, REBASE_APPLY_DIR) < 0)
		return -1;

	if (FUNC5(FUNC1(&path))) {
		type = GIT_REBASE_TYPE_APPLY;
		goto done;
	}

	FUNC0(&path);
	if (FUNC4(&path, repo->gitdir, REBASE_MERGE_DIR) < 0)
		return -1;

	if (FUNC5(FUNC1(&path))) {
		type = GIT_REBASE_TYPE_MERGE;
		goto done;
	}

done:
	*type_out = type;

	if (type != GIT_REBASE_TYPE_NONE && path_out)
		*path_out = FUNC2(&path);

	FUNC3(&path);

	return 0;
}