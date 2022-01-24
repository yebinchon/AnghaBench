#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  const git_tree ;
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIT_ERROR_REFERENCE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  commit_parent_for_amend ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 char* FUNC6 (int /*<<< orphan*/  const*) ; 
 char* FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const**,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/  const*) ; 

int FUNC20(
	git_oid *id,
	const git_commit *commit_to_amend,
	const char *update_ref,
	const git_signature *author,
	const git_signature *committer,
	const char *message_encoding,
	const char *message,
	const git_tree *tree)
{
	git_repository *repo;
	git_oid tree_id;
	git_reference *ref;
	int error;

	FUNC1(id && commit_to_amend);

	repo = FUNC8(commit_to_amend);

	if (!author)
		author = FUNC3(commit_to_amend);
	if (!committer)
		committer = FUNC4(commit_to_amend);
	if (!message_encoding)
		message_encoding = FUNC7(commit_to_amend);
	if (!message)
		message = FUNC6(commit_to_amend);

	if (!tree) {
		git_tree *old_tree;
		FUNC0( FUNC9(&old_tree, commit_to_amend) );
		FUNC12(&tree_id, FUNC18(old_tree));
		FUNC17(old_tree);
	} else {
		FUNC1(FUNC19(tree) == repo);
		FUNC12(&tree_id, FUNC18(tree));
	}

	if (update_ref) {
		if ((error = FUNC15(&ref, repo, update_ref, 5)) < 0)
			return error;

		if (FUNC11(FUNC5(commit_to_amend), FUNC16(ref))) {
			FUNC14(ref);
			FUNC10(GIT_ERROR_REFERENCE, "commit to amend is not the tip of the given branch");
			return -1;
		}
	}

	error = FUNC2(
		id, repo, NULL, author, committer, message_encoding, message,
		&tree_id, commit_parent_for_amend, (void *)commit_to_amend, false);

	if (!error && update_ref) {
		error = FUNC13(
			repo, ref, NULL, id, "commit");
		FUNC14(ref);
	}

	return error;
}