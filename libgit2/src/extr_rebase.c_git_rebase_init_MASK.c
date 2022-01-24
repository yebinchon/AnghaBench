#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_13__ {int /*<<< orphan*/  inmemory; } ;
typedef  TYPE_1__ git_rebase_options ;
struct TYPE_14__ {int inmemory; int /*<<< orphan*/  type; int /*<<< orphan*/ * repo; } ;
typedef  TYPE_2__ git_rebase ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR ; 
 int /*<<< orphan*/  GIT_REBASE_TYPE_MERGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_2__**,TYPE_1__ const*) ; 
 int FUNC8 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC13 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC14 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

int FUNC15(
	git_rebase **out,
	git_repository *repo,
	const git_annotated_commit *branch,
	const git_annotated_commit *upstream,
	const git_annotated_commit *onto,
	const git_rebase_options *given_opts)
{
	git_rebase *rebase = NULL;
	git_annotated_commit *head_branch = NULL;
	git_reference *head_ref = NULL;
	bool inmemory = (given_opts && given_opts->inmemory);
	int error;

	FUNC0(repo && (upstream || onto));

	*out = NULL;

	if (!onto)
		onto = upstream;

	if ((error = FUNC8(given_opts)) < 0)
		goto done;

	if (!inmemory) {
		if ((error = FUNC5(repo, "rebase")) < 0 ||
			(error = FUNC11(repo)) < 0 ||
			(error = FUNC10(repo, true, true, GIT_ERROR)) < 0)
			goto done;
	}

	if (!branch) {
		if ((error = FUNC6(&head_ref, repo)) < 0 ||
			(error = FUNC2(&head_branch, repo, head_ref)) < 0)
			goto done;

		branch = head_branch;
	}

	if (FUNC7(&rebase, given_opts) < 0)
		return -1;

	rebase->repo = repo;
	rebase->inmemory = inmemory;
	rebase->type = GIT_REBASE_TYPE_MERGE;

	if ((error = FUNC14(rebase, repo, branch, upstream, onto)) < 0)
		goto done;

	if (inmemory)
		error = FUNC12(rebase, repo, branch, upstream, onto);
	else
		error = FUNC13(rebase, repo, branch ,upstream, onto);

	if (error == 0)
		*out = rebase;

done:
	FUNC4(head_ref);
	FUNC1(head_branch);

	if (error < 0) {
		FUNC9(rebase);
		FUNC3(rebase);
	}

	return error;
}