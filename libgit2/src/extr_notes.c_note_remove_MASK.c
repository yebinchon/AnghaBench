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
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_NOTES_DEFAULT_MSG_RM ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  remove_note_in_tree_eexists_cb ; 
 int /*<<< orphan*/  remove_note_in_tree_enotfound_cb ; 

__attribute__((used)) static int FUNC4(
		git_oid *notes_commit_out,
		git_repository *repo,
		const git_signature *author, const git_signature *committer,
		const char *notes_ref, git_tree *tree,
		const char *target, git_commit **parents)
{
	int error;
	git_tree *tree_after_removal = NULL;
	git_oid oid;

	if ((error = FUNC3(
		&tree_after_removal, repo, tree, NULL, target, 0,
		remove_note_in_tree_eexists_cb, remove_note_in_tree_enotfound_cb)) < 0)
		goto cleanup;

	error = FUNC0(&oid, repo, notes_ref, author, committer,
	  NULL, GIT_NOTES_DEFAULT_MSG_RM,
	  tree_after_removal,
	  *parents == NULL ? 0 : 1,
	  (const git_commit **) parents);

	if (error < 0)
		goto cleanup;

	if (notes_commit_out)
		FUNC1(notes_commit_out, &oid);

cleanup:
	FUNC2(tree_after_removal);
	return error;
}