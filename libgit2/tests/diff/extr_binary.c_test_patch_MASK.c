#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_patch ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_7__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_DIFF_FORMAT_PATCH ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  git_diff_print_callback__to_buf ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  repo ; 

void FUNC19(
	const char *one,
	const char *two,
	const git_diff_options *opts,
	const char *expected)
{
	git_oid id_one, id_two;
	git_index *index = NULL;
	git_commit *commit_one, *commit_two = NULL;
	git_tree *tree_one, *tree_two;
	git_diff *diff;
	git_patch *patch;
	git_buf actual = GIT_BUF_INIT;

	FUNC1(FUNC12(&id_one, one));
	FUNC1(FUNC5(&commit_one, repo, &id_one));
	FUNC1(FUNC6(&tree_one, commit_one));

	if (two) {
		FUNC1(FUNC12(&id_two, two));
		FUNC1(FUNC5(&commit_two, repo, &id_two));
		FUNC1(FUNC6(&tree_two, commit_two));
	} else {
		FUNC1(FUNC16(&index, repo));
		FUNC1(FUNC11(&id_two, index));
		FUNC1(FUNC18(&tree_two, repo, &id_two));
	}

	FUNC1(FUNC9(&diff, repo, tree_one, tree_two, opts));

	FUNC1(FUNC14(&patch, diff, 0));
	FUNC1(FUNC15(&actual, patch));

	FUNC0(expected, actual.ptr);

	FUNC2(&actual);
	FUNC1(FUNC8(diff, GIT_DIFF_FORMAT_PATCH, git_diff_print_callback__to_buf, &actual));

	FUNC0(expected, actual.ptr);

	FUNC3(&actual);
	FUNC13(patch);
	FUNC7(diff);
	FUNC17(tree_one);
	FUNC17(tree_two);
	FUNC4(commit_one);
	FUNC4(commit_two);
	FUNC10(index);
}