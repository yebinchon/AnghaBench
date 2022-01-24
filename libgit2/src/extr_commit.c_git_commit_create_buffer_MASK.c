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
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_commit ;
typedef  int /*<<< orphan*/  git_buf ;
typedef  int /*<<< orphan*/  git_array_oid_t ;
struct TYPE_3__ {size_t member_0; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  const** member_1; } ;
typedef  TYPE_1__ commit_parent_data ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ARRAY_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  commit_parent_from_array ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,char const*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int) ; 

int FUNC6(git_buf *out,
	git_repository *repo,
	const git_signature *author,
	const git_signature *committer,
	const char *message_encoding,
	const char *message,
	const git_tree *tree,
	size_t parent_count,
	const git_commit *parents[])
{
	int error;
	commit_parent_data data = { parent_count, parents, repo };
	git_array_oid_t parents_arr = GIT_ARRAY_INIT;
	const git_oid *tree_id;

	FUNC0(tree && FUNC4(tree) == repo);

	tree_id = FUNC3(tree);

	if ((error = FUNC5(&parents_arr, repo, tree_id, commit_parent_from_array, &data, NULL, true)) < 0)
		return error;

	error = FUNC2(
		out, author, committer,
		message_encoding, message, tree_id,
		&parents_arr);

	FUNC1(parents_arr);
	return error;
}