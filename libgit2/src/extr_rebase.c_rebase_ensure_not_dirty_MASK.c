#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_4__ {int /*<<< orphan*/  ignore_submodules; } ;
typedef  TYPE_1__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_ERROR_REBASE ; 
 int /*<<< orphan*/  GIT_SUBMODULE_IGNORE_UNTRACKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(
	git_repository *repo,
	bool check_index,
	bool check_workdir,
	int fail_with)
{
	git_tree *head = NULL;
	git_index *index = NULL;
	git_diff *diff = NULL;
	int error = 0;

	if (check_index) {
		if ((error = FUNC6(&head, repo)) < 0 ||
			(error = FUNC7(&index, repo)) < 0 ||
			(error = FUNC3(&diff, repo, head, index, NULL)) < 0)
			goto done;

		if (FUNC2(diff) > 0) {
			FUNC4(GIT_ERROR_REBASE, "uncommitted changes exist in index");
			error = fail_with;
			goto done;
		}

		FUNC0(diff);
		diff = NULL;
	}

	if (check_workdir) {
		git_diff_options diff_opts = GIT_DIFF_OPTIONS_INIT;
		diff_opts.ignore_submodules = GIT_SUBMODULE_IGNORE_UNTRACKED;
		if ((error = FUNC1(&diff, repo, index, &diff_opts)) < 0)
			goto done;

		if (FUNC2(diff) > 0) {
			FUNC4(GIT_ERROR_REBASE, "unstaged changes exist in workdir");
			error = fail_with;
			goto done;
		}
	}

done:
	FUNC0(diff);
	FUNC5(index);
	FUNC8(head);

	return error;
}