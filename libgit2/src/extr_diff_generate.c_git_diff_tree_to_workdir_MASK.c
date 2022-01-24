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
typedef  int /*<<< orphan*/  git_iterator_options ;
typedef  int /*<<< orphan*/  git_iterator ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ITERATOR_DONT_AUTOEXPAND ; 
 int /*<<< orphan*/  GIT_ITERATOR_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

int FUNC9(
	git_diff **out,
	git_repository *repo,
	git_tree *old_tree,
	const git_diff_options *opts)
{
	git_iterator_options a_opts = GIT_ITERATOR_OPTIONS_INIT,
		b_opts = GIT_ITERATOR_OPTIONS_INIT;
	git_iterator *a = NULL, *b = NULL;
	git_diff *diff = NULL;
	char *prefix = NULL;
	git_index *index;
	int error;

	FUNC0(out && repo);

	*out = NULL;

	if ((error = FUNC1(&prefix, &a_opts, 0,
						&b_opts, GIT_ITERATOR_DONT_AUTOEXPAND, opts) < 0) ||
	    (error = FUNC8(&index, repo)) < 0 ||
	    (error = FUNC5(&a, old_tree, &a_opts)) < 0 ||
	    (error = FUNC6(&b, repo, index, old_tree, &b_opts)) < 0 ||
	    (error = FUNC3(&diff, repo, a, b, opts)) < 0)
		goto out;

	*out = diff;
	diff = NULL;
out:
	FUNC7(a);
	FUNC7(b);
	FUNC4(diff);
	FUNC2(prefix);

	return error;
}