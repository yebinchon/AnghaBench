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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_note ;
typedef  int /*<<< orphan*/  git_commit ;
typedef  int /*<<< orphan*/  git_blob ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(
	git_note **out,
	git_repository *repo,
	git_commit *commit,
	git_tree *tree,
	const char *target)
{
	int error, fanout = 0;
	git_oid oid;
	git_blob *blob = NULL;
	git_note *note = NULL;
	git_tree *subtree = NULL;

	if ((error = FUNC1(&subtree, tree, repo, target, &fanout)) < 0)
		goto cleanup;

	if ((error = FUNC0(&oid, subtree, target + fanout)) < 0)
		goto cleanup;

	if ((error = FUNC3(&blob, repo, &oid)) < 0)
		goto cleanup;

	if ((error = FUNC5(&note, &oid, commit, blob)) < 0)
		goto cleanup;

	*out = note;

cleanup:
	FUNC4(subtree);
	FUNC2(blob);
	return error;
}