#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_merge_options ;
typedef  int /*<<< orphan*/  git_indexwriter ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_6__ {unsigned int checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 unsigned int GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  GIT_ERROR_MERGE ; 
 int /*<<< orphan*/  GIT_INDEXWRITER_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const**,size_t) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int FUNC17 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__ const*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const**,size_t) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

int FUNC19(
	git_repository *repo,
	const git_annotated_commit **their_heads,
	size_t their_heads_len,
	const git_merge_options *merge_opts,
	const git_checkout_options *given_checkout_opts)
{
	git_reference *our_ref = NULL;
	git_checkout_options checkout_opts;
	git_annotated_commit *our_head = NULL, *base = NULL;
	git_index *repo_index = NULL, *index = NULL;
	git_indexwriter indexwriter = GIT_INDEXWRITER_INIT;
	unsigned int checkout_strategy;
	int error = 0;

	FUNC0(repo && their_heads && their_heads_len > 0);

	if (their_heads_len != 1) {
		FUNC4(GIT_ERROR_MERGE, "can only merge a single branch");
		return -1;
	}

	if ((error = FUNC14(repo, "merge")) < 0)
		goto done;

	checkout_strategy = given_checkout_opts ?
		given_checkout_opts->checkout_strategy :
		GIT_CHECKOUT_SAFE;

	if ((error = FUNC9(&indexwriter, repo,
		&checkout_strategy)) < 0)
		goto done;

	if ((error = FUNC15(&repo_index, repo) < 0) ||
	    (error = FUNC6(repo_index, 0) < 0))
		goto done;

	/* Write the merge setup files to the repository. */
	if ((error = FUNC2(&our_head, repo)) < 0 ||
		(error = FUNC12(repo, our_head, their_heads,
			their_heads_len)) < 0)
		goto done;

	/* TODO: octopus */

	if ((error = FUNC16(&index, &base, repo, our_head,
			(git_annotated_commit *)their_heads[0], 0, merge_opts)) < 0 ||
		(error = FUNC11(repo, index)) < 0 ||
		(error = FUNC10(repo, index)) < 0)
		goto done;

	/* check out the merge results */

	if ((error = FUNC17(&checkout_opts, repo,
			given_checkout_opts, checkout_strategy,
			base, our_head, their_heads, their_heads_len)) < 0 ||
		(error = FUNC3(repo, index, &checkout_opts)) < 0)
		goto done;

	error = FUNC8(&indexwriter);

done:
	if (error < 0)
		FUNC18(repo);

	FUNC7(&indexwriter);
	FUNC5(index);
	FUNC1(our_head);
	FUNC1(base);
	FUNC13(our_ref);
	FUNC5(repo_index);

	return error;
}