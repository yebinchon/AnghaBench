#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_7__ {int flags; } ;
typedef  TYPE_1__ git_merge_options ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ git_iterator_options ;
typedef  int /*<<< orphan*/  git_iterator ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ITERATOR_DONT_IGNORE_CASE ; 
 TYPE_2__ GIT_ITERATOR_OPTIONS_INIT ; 
 int GIT_MERGE_SKIP_REUC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const*) ; 

int FUNC8(
	git_index **out,
	git_repository *repo,
	const git_tree *ancestor_tree,
	const git_tree *our_tree,
	const git_tree *their_tree,
	const git_merge_options *merge_opts)
{
	git_iterator *ancestor_iter = NULL, *our_iter = NULL, *their_iter = NULL;
	git_iterator_options iter_opts = GIT_ITERATOR_OPTIONS_INIT;
	int error;

	FUNC0(out && repo);

	/* if one side is treesame to the ancestor, take the other side */
	if (ancestor_tree && merge_opts && (merge_opts->flags & GIT_MERGE_SKIP_REUC)) {
		const git_tree *result = NULL;
		const git_oid *ancestor_tree_id = FUNC7(ancestor_tree);

		if (our_tree && !FUNC6(ancestor_tree_id, FUNC7(our_tree)))
			result = their_tree;
		else if (their_tree && !FUNC6(ancestor_tree_id, FUNC7(their_tree)))
			result = our_tree;

		if (result) {
			if ((error = FUNC1(out)) == 0)
    			error = FUNC2(*out, result);

			return error;
		}
	}

	iter_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

	if ((error = FUNC3(
			&ancestor_iter, (git_tree *)ancestor_tree, &iter_opts)) < 0 ||
		(error = FUNC3(
			&our_iter, (git_tree *)our_tree, &iter_opts)) < 0 ||
		(error = FUNC3(
			&their_iter, (git_tree *)their_tree, &iter_opts)) < 0)
		goto done;

	error = FUNC5(
		out, repo, ancestor_iter, our_iter, their_iter, merge_opts);

done:
	FUNC4(ancestor_iter);
	FUNC4(our_iter);
	FUNC4(their_iter);

	return error;
}