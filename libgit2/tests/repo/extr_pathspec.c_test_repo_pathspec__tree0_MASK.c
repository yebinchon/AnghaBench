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
struct TYPE_3__ {int /*<<< orphan*/  count; int /*<<< orphan*/  strings; } ;
typedef  TYPE_1__ git_strarray ;
typedef  int /*<<< orphan*/  git_pathspec_match_list ;
typedef  int /*<<< orphan*/  git_pathspec ;
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIT_PATHSPEC_FIND_FAILURES ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  str0 ; 

void FUNC14(void)
{
	git_object *tree;
	git_strarray s;
	git_pathspec *ps;
	git_pathspec_match_list *m;

	/* { "*_file", "new_file", "garbage" } */
	s.strings = str0; s.count = FUNC0(str0);
	FUNC3(FUNC12(&ps, &s));

	FUNC3(FUNC13(&tree, g_repo, "HEAD~2^{tree}"));

	FUNC3(FUNC11(&m, (git_tree *)tree,
		GIT_PATHSPEC_FIND_FAILURES, ps));
	FUNC2(4, FUNC7(m));
	FUNC1("current_file", FUNC6(m, 0));
	FUNC1("modified_file", FUNC6(m, 1));
	FUNC1("staged_changes_modified_file", FUNC6(m, 2));
	FUNC1("staged_delete_modified_file", FUNC6(m, 3));
	FUNC1(NULL, FUNC6(m, 4));
	FUNC2(2, FUNC9(m));
	FUNC1("new_file", FUNC8(m, 0));
	FUNC1("garbage", FUNC8(m, 1));
	FUNC1(NULL, FUNC8(m, 2));
	FUNC10(m);

	FUNC4(tree);

	FUNC3(FUNC13(&tree, g_repo, "HEAD^{tree}"));

	FUNC3(FUNC11(&m, (git_tree *)tree,
		GIT_PATHSPEC_FIND_FAILURES, ps));
	FUNC2(7, FUNC7(m));
	FUNC1("current_file", FUNC6(m, 0));
	FUNC1("modified_file", FUNC6(m, 1));
	FUNC1("staged_changes_modified_file", FUNC6(m, 2));
	FUNC1("staged_delete_modified_file", FUNC6(m, 3));
	FUNC1("subdir/current_file", FUNC6(m, 4));
	FUNC1("subdir/deleted_file", FUNC6(m, 5));
	FUNC1("subdir/modified_file", FUNC6(m, 6));
	FUNC1(NULL, FUNC6(m, 7));
	FUNC2(2, FUNC9(m));
	FUNC1("new_file", FUNC8(m, 0));
	FUNC1("garbage", FUNC8(m, 1));
	FUNC1(NULL, FUNC8(m, 2));
	FUNC10(m);

	FUNC4(tree);

	FUNC5(ps);
}