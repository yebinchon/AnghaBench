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
 int GIT_PATHSPEC_FIND_FAILURES ; 
 int GIT_PATHSPEC_IGNORE_CASE ; 
 int GIT_PATHSPEC_USE_CASE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  str5 ; 

void FUNC13(void)
{
	git_object *tree;
	git_strarray s;
	git_pathspec *ps;
	git_pathspec_match_list *m;

	/* { "S*" } */
	s.strings = str5; s.count = FUNC0(str5);
	FUNC3(FUNC11(&ps, &s));

	FUNC3(FUNC12(&tree, g_repo, "HEAD~2^{tree}"));

	FUNC3(FUNC10(&m, (git_tree *)tree,
		GIT_PATHSPEC_USE_CASE | GIT_PATHSPEC_FIND_FAILURES, ps));
	FUNC2(0, FUNC7(m));
	FUNC2(1, FUNC8(m));
	FUNC9(m);

	FUNC3(FUNC10(&m, (git_tree *)tree,
		GIT_PATHSPEC_IGNORE_CASE | GIT_PATHSPEC_FIND_FAILURES, ps));
	FUNC2(5, FUNC7(m));
	FUNC1("staged_changes", FUNC6(m, 0));
	FUNC1("staged_delete_modified_file", FUNC6(m, 4));
	FUNC2(0, FUNC8(m));
	FUNC9(m);

	FUNC4(tree);

	FUNC3(FUNC12(&tree, g_repo, "HEAD^{tree}"));

	FUNC3(FUNC10(&m, (git_tree *)tree,
		GIT_PATHSPEC_IGNORE_CASE | GIT_PATHSPEC_FIND_FAILURES, ps));
	FUNC2(9, FUNC7(m));
	FUNC1("staged_changes", FUNC6(m, 0));
	FUNC1("subdir.txt", FUNC6(m, 5));
	FUNC1("subdir/current_file", FUNC6(m, 6));
	FUNC2(0, FUNC8(m));
	FUNC9(m);

	FUNC4(tree);

	FUNC5(ps);
}