#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rename_expected {int member_0; unsigned int* member_1; char const** member_2; char const** member_3; scalar_t__ idx; scalar_t__ len; } ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_diff_options ;
struct TYPE_4__ {int flags; } ;
typedef  TYPE_1__ git_diff_find_options ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 unsigned int GIT_DELTA_RENAMED ; 
 int GIT_DIFF_FIND_AND_BREAK_REWRITES ; 
 TYPE_1__ GIT_DIFF_FIND_OPTIONS_INIT ; 
 int GIT_DIFF_FIND_RENAMES_FROM_REWRITES ; 
 int GIT_DIFF_FIND_REWRITES ; 
 int /*<<< orphan*/  GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct rename_expected*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  test_names_expected ; 

void FUNC14(void)
{
	git_index *index;
	git_tree *tree;
	git_diff *diff;
	git_diff_options diffopts = GIT_DIFF_OPTIONS_INIT;
	git_diff_find_options findopts = GIT_DIFF_FIND_OPTIONS_INIT;

	unsigned int status[] = { GIT_DELTA_RENAMED, GIT_DELTA_RENAMED };
	const char *sources[] = { "ikeepsix.txt", "songof7cities.txt" };
	const char *targets[] = { "songof7cities.txt", "this-is-a-rename.txt" };
	struct rename_expected expect = { 2, status, sources, targets };

	FUNC1(FUNC10(&index, g_repo));

	FUNC1(FUNC13("renames/songof7cities.txt", "renames/this-is-a-rename.txt"));
	FUNC1(FUNC13("renames/ikeepsix.txt", "renames/songof7cities.txt"));

	FUNC1(FUNC8(index, "ikeepsix.txt"));

	FUNC1(FUNC6(index, "songof7cities.txt"));
	FUNC1(FUNC6(index, "this-is-a-rename.txt"));

	FUNC1(FUNC9(index));

	FUNC1(
		FUNC11((git_object **)&tree, g_repo, "HEAD^{tree}"));

	FUNC1(
		FUNC5(&diff, g_repo, tree, index, &diffopts));

	findopts.flags |= GIT_DIFF_FIND_AND_BREAK_REWRITES |
		GIT_DIFF_FIND_REWRITES |
		GIT_DIFF_FIND_RENAMES_FROM_REWRITES;

	FUNC1(FUNC2(diff, &findopts));

	FUNC1(FUNC3(
		diff, test_names_expected, NULL, NULL, NULL, &expect));

	FUNC0(expect.idx == expect.len);

	FUNC4(diff);
	FUNC12(tree);
	FUNC7(index);
}