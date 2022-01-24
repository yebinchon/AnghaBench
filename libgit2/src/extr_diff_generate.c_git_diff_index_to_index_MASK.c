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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_iterator_options ;
typedef  int /*<<< orphan*/  git_iterator ;
struct TYPE_5__ {scalar_t__ ignore_case; } ;
typedef  TYPE_1__ git_index ;
typedef  int /*<<< orphan*/  git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ITERATOR_DONT_IGNORE_CASE ; 
 int /*<<< orphan*/  GIT_ITERATOR_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(
	git_diff **out,
	git_repository *repo,
	git_index *old_index,
	git_index *new_index,
	const git_diff_options *opts)
{
	git_iterator_options a_opts = GIT_ITERATOR_OPTIONS_INIT,
		b_opts = GIT_ITERATOR_OPTIONS_INIT;
	git_iterator *a = NULL, *b = NULL;
	git_diff *diff = NULL;
	char *prefix = NULL;
	int error;

	FUNC0(out && old_index && new_index);

	*out = NULL;

	if ((error = FUNC1(&prefix, &a_opts, GIT_ITERATOR_DONT_IGNORE_CASE,
						&b_opts, GIT_ITERATOR_DONT_IGNORE_CASE, opts) < 0) ||
	    (error = FUNC6(&a, repo, old_index, &a_opts)) < 0 ||
	    (error = FUNC6(&b, repo, new_index, &b_opts)) < 0 ||
	    (error = FUNC3(&diff, repo, a, b, opts)) < 0)
		goto out;

	/* if index is in case-insensitive order, re-sort deltas to match */
	if (old_index->ignore_case || new_index->ignore_case)
		FUNC4(diff, true);

	*out = diff;
	diff = NULL;
out:
	FUNC7(a);
	FUNC7(b);
	FUNC5(diff);
	FUNC2(prefix);

	return error;
}