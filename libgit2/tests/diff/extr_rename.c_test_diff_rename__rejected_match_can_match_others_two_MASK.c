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
struct rename_expected {int member_0; unsigned int* member_1; char const** member_2; char const** member_3; scalar_t__ idx; } ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_diff_options ;
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_diff_find_options ;
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_8__ {int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_2__ git_checkout_options ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CHECKOUT_FORCE ; 
 TYPE_2__ GIT_CHECKOUT_OPTIONS_INIT ; 
 unsigned int GIT_DELTA_RENAMED ; 
 TYPE_1__ GIT_DIFF_FIND_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_DIFF_FIND_RENAMES ; 
 int /*<<< orphan*/  GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct rename_expected*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  test_names_expected ; 
 int /*<<< orphan*/  FUNC18 (char*,int) ; 

void FUNC19(void)
{
	git_reference *head, *selfsimilar;
	git_index *index;
	git_tree *tree;
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	git_diff *diff;
	git_diff_options diffopts = GIT_DIFF_OPTIONS_INIT;
	git_diff_find_options findopts = GIT_DIFF_FIND_OPTIONS_INIT;
	unsigned int status[] = { GIT_DELTA_RENAMED, GIT_DELTA_RENAMED };
	const char *sources[] = { "a.txt", "b.txt" };
	const char *targets[] = { "c.txt", "d.txt" };
	struct rename_expected expect = { 2, status, sources, targets };

	opts.checkout_strategy = GIT_CHECKOUT_FORCE;
	findopts.flags = GIT_DIFF_FIND_RENAMES;

	FUNC1(FUNC12(&head, g_repo, "HEAD"));
	FUNC1(FUNC13(
		&selfsimilar, head, "refs/heads/renames_similar_two", NULL));
	FUNC1(FUNC2(g_repo, &opts));
	FUNC1(FUNC14(&index, g_repo));

	FUNC1(FUNC17("renames/a.txt"));
	FUNC1(FUNC17("renames/b.txt"));

	FUNC1(FUNC9(index, "a.txt"));
	FUNC1(FUNC9(index, "b.txt"));

	FUNC18("renames/c.txt", 7);
	FUNC18("renames/d.txt", 8);

	FUNC1(FUNC7(index, "c.txt"));
	FUNC1(FUNC7(index, "d.txt"));

	FUNC1(FUNC10(index));

	FUNC1(
		FUNC15((git_object **)&tree, g_repo, "HEAD^{tree}"));

	FUNC1(
		FUNC6(&diff, g_repo, tree, index, &diffopts));

	FUNC1(FUNC3(diff, &findopts));

	FUNC1(FUNC4(
		diff, test_names_expected, NULL, NULL, NULL, &expect));
	FUNC0(expect.idx > 0);

	FUNC5(diff);
	FUNC16(tree);
	FUNC8(index);
	FUNC11(head);
	FUNC11(selfsimilar);
}