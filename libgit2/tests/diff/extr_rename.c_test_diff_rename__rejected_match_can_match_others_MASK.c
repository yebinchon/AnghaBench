#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct rename_expected {int member_0; unsigned int* member_1; char const** member_2; char const** member_3; } ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_diff_options ;
struct TYPE_12__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_diff_find_options ;
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_13__ {int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_2__ git_checkout_options ;
struct TYPE_14__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_3__ git_buf ;

/* Variables and functions */
 TYPE_3__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_CHECKOUT_FORCE ; 
 TYPE_2__ GIT_CHECKOUT_OPTIONS_INIT ; 
 unsigned int GIT_DELTA_RENAMED ; 
 TYPE_1__ GIT_DIFF_FIND_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_DIFF_FIND_RENAMES ; 
 int /*<<< orphan*/  GIT_DIFF_OPTIONS_INIT ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct rename_expected*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 char* FUNC21 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  test_names_expected ; 

void FUNC22(void)
{
	git_reference *head, *selfsimilar;
	git_index *index;
	git_tree *tree;
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	git_diff *diff;
	git_diff_options diffopts = GIT_DIFF_OPTIONS_INIT;
	git_diff_find_options findopts = GIT_DIFF_FIND_OPTIONS_INIT;
	git_buf one = GIT_BUF_INIT, two = GIT_BUF_INIT;
	unsigned int status[] = { GIT_DELTA_RENAMED, GIT_DELTA_RENAMED };
	const char *sources[] = { "Class1.cs", "Class2.cs" };
	const char *targets[] = { "ClassA.cs", "ClassB.cs" };
	struct rename_expected expect = { 2, status, sources, targets };
	char *ptr;

	opts.checkout_strategy = GIT_CHECKOUT_FORCE;
	findopts.flags = GIT_DIFF_FIND_RENAMES;

	FUNC1(FUNC15(&head, g_repo, "HEAD"));
	FUNC1(FUNC16(
		&selfsimilar, head, "refs/heads/renames_similar", NULL));
	FUNC1(FUNC3(g_repo, &opts));
	FUNC1(FUNC17(&index, g_repo));

	FUNC1(FUNC8(&one, "renames/Class1.cs"));
	FUNC1(FUNC8(&two, "renames/Class2.cs"));

	FUNC1(FUNC20("renames/Class1.cs"));
	FUNC1(FUNC20("renames/Class2.cs"));

	FUNC1(FUNC12(index, "Class1.cs"));
	FUNC1(FUNC12(index, "Class2.cs"));

	FUNC0(ptr = FUNC21(one.ptr, "Class1"));
	ptr[5] = 'A';

	FUNC0(ptr = FUNC21(two.ptr, "Class2"));
	ptr[5] = 'B';

	FUNC1(
		FUNC9(&one, "renames/ClassA.cs", O_RDWR|O_CREAT, 0777));
	FUNC1(
		FUNC9(&two, "renames/ClassB.cs", O_RDWR|O_CREAT, 0777));

	FUNC1(FUNC10(index, "ClassA.cs"));
	FUNC1(FUNC10(index, "ClassB.cs"));

	FUNC1(FUNC13(index));

	FUNC1(
		FUNC18((git_object **)&tree, g_repo, "HEAD^{tree}"));

	FUNC1(
		FUNC7(&diff, g_repo, tree, index, &diffopts));

	FUNC1(FUNC4(diff, &findopts));

	FUNC1(FUNC5(
		diff, test_names_expected, NULL, NULL, NULL, &expect));

	FUNC6(diff);
	FUNC19(tree);
	FUNC11(index);
	FUNC14(head);
	FUNC14(selfsimilar);
	FUNC2(&one);
	FUNC2(&two);
}