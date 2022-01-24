#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_7__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(git_buf *remote_name, git_repository *repo)
{
	int error;
	git_reference *head = NULL;
	git_buf upstream_name = GIT_BUF_INIT;

	/* lookup and dereference HEAD */
	if ((error = FUNC7(&head, repo)) < 0)
		return error;

	/**
	 * If head does not refer to a branch, then return
	 * GIT_ENOTFOUND to indicate that we could not find
	 * a remote key for the local tracking branch HEAD points to.
	 **/
	if (!FUNC5(head)) {
		FUNC3(GIT_ERROR_INVALID,
			"HEAD does not refer to a branch.");
		error = GIT_ENOTFOUND;
		goto done;
	}

	/* lookup remote tracking branch of HEAD */
	if ((error = FUNC1(
		&upstream_name,
		repo,
		FUNC6(head))) < 0)
		goto done;

	/* lookup remote of remote tracking branch */
	if ((error = FUNC0(remote_name, repo, upstream_name.ptr)) < 0)
		goto done;

done:
	FUNC2(&upstream_name);
	FUNC4(head);

	return error;
}