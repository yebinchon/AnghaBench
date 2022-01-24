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
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_commit ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const**) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(
	git_commit **i_commit,
	git_repository *repo,
	git_index *index,
	const git_signature *stasher,
	const char *message,
	const git_commit *parent)
{
	git_tree *i_tree = NULL;
	git_oid i_commit_oid;
	git_buf msg = GIT_BUF_INIT;
	int error;

	if ((error = FUNC0(&i_tree, repo, index)) < 0)
		goto cleanup;

	if ((error = FUNC3(&msg, "index on %s\n", message)) < 0)
		goto cleanup;

	if ((error = FUNC4(
		&i_commit_oid,
		FUNC6(index),
		NULL,
		stasher,
		stasher,
		NULL,
		FUNC1(&msg),
		i_tree,
		1,
		&parent)) < 0)
		goto cleanup;

	error = FUNC5(i_commit, FUNC6(index), &i_commit_oid);

cleanup:
	FUNC7(i_tree);
	FUNC2(&msg);
	return error;
}