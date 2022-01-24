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
typedef  int /*<<< orphan*/  git_iterator_options ;
typedef  int /*<<< orphan*/  git_iterator_flag_t ;
typedef  int /*<<< orphan*/  git_iterator ;
struct TYPE_5__ {int flags; } ;
typedef  TYPE_1__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 int GIT_DIFF_IGNORE_CASE ; 
 int /*<<< orphan*/  GIT_ITERATOR_DONT_IGNORE_CASE ; 
 int /*<<< orphan*/  GIT_ITERATOR_IGNORE_CASE ; 
 int /*<<< orphan*/  GIT_ITERATOR_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(
	git_diff **out,
	git_repository *repo,
	git_tree *old_tree,
	git_tree *new_tree,
	const git_diff_options *opts)
{
	git_iterator_flag_t iflag = GIT_ITERATOR_DONT_IGNORE_CASE;
	git_iterator_options a_opts = GIT_ITERATOR_OPTIONS_INIT,
		b_opts = GIT_ITERATOR_OPTIONS_INIT;
	git_iterator *a = NULL, *b = NULL;
	git_diff *diff = NULL;
	char *prefix = NULL;
	int error = 0;

	FUNC0(out && repo);

	*out = NULL;

	/* for tree to tree diff, be case sensitive even if the index is
	 * currently case insensitive, unless the user explicitly asked
	 * for case insensitivity
	 */
	if (opts && (opts->flags & GIT_DIFF_IGNORE_CASE) != 0)
		iflag = GIT_ITERATOR_IGNORE_CASE;

	if ((error = FUNC1(&prefix, &a_opts, iflag, &b_opts, iflag, opts)) < 0 ||
	    (error = FUNC5(&a, old_tree, &a_opts)) < 0 ||
	    (error = FUNC5(&b, new_tree, &b_opts)) < 0 ||
	    (error = FUNC3(&diff, repo, a, b, opts)) < 0)
		goto out;

	*out = diff;
	diff = NULL;
out:
	FUNC6(a);
	FUNC6(b);
	FUNC4(diff);
	FUNC2(prefix);

	return error;
}