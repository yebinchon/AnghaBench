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
typedef  int /*<<< orphan*/  git_revwalk ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_rebase_operation ;
struct TYPE_4__ {int /*<<< orphan*/  repo; } ;
typedef  TYPE_1__ git_rebase ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_commit ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GIT_REBASE_OPERATION_PICK ; 
 int /*<<< orphan*/  GIT_SORT_REVERSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(
	git_rebase *rebase,
	git_repository *repo,
	const git_annotated_commit *branch,
	const git_annotated_commit *upstream,
	const git_annotated_commit *onto)
{
	git_revwalk *revwalk = NULL;
	git_commit *commit;
	git_oid id;
	bool merge;
	git_rebase_operation *operation;
	int error;

	if (!upstream)
		upstream = onto;

	if ((error = FUNC7(&revwalk, rebase->repo)) < 0 ||
		(error = FUNC9(revwalk, FUNC1(branch))) < 0 ||
		(error = FUNC6(revwalk, FUNC1(upstream))) < 0)
		goto done;

	FUNC10(revwalk, GIT_SORT_REVERSE);

	while ((error = FUNC8(&id, revwalk)) == 0) {
		if ((error = FUNC3(&commit, repo, &id)) < 0)
			goto done;

		merge = (FUNC4(commit) > 1);
		FUNC2(commit);

		if (merge)
			continue;

		operation = FUNC11(rebase, GIT_REBASE_OPERATION_PICK, &id, NULL);
		FUNC0(operation);
	}

	error = 0;

done:
	FUNC5(revwalk);
	return error;
}