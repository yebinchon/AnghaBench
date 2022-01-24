#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_iterator_options ;
typedef  int /*<<< orphan*/  git_iterator ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ITERATOR_DONT_IGNORE_CASE ; 
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ; 
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(
	git_index **out,
	git_repository *repo,
	git_tree *ancestor_tree,
	git_index *ours_index,
	git_index *theirs_index)
{
	git_iterator *ancestor = NULL, *ours = NULL, *theirs = NULL;
	git_iterator_options iter_opts = GIT_ITERATOR_OPTIONS_INIT;
	int error;

	iter_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

	if ((error = FUNC1(&ancestor, ancestor_tree, &iter_opts)) < 0 ||
		(error = FUNC0(&ours, repo, ours_index, &iter_opts)) < 0 ||
		(error = FUNC0(&theirs, repo, theirs_index, &iter_opts)) < 0)
		goto done;

	error = FUNC3(out, repo, ancestor, ours, theirs, NULL);

done:
	FUNC2(ancestor);
	FUNC2(ours);
	FUNC2(theirs);
	return error;
}