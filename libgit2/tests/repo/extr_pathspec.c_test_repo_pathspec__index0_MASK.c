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
struct TYPE_3__ {int /*<<< orphan*/  count; int /*<<< orphan*/  strings; } ;
typedef  TYPE_1__ git_strarray ;
typedef  int /*<<< orphan*/  git_pathspec_match_list ;
typedef  int /*<<< orphan*/  git_pathspec ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIT_PATHSPEC_FIND_FAILURES ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  str0 ; 

void FUNC14(void)
{
	git_index *idx;
	git_strarray s;
	git_pathspec *ps;
	git_pathspec_match_list *m;

	FUNC3(FUNC13(&idx, g_repo));

	/* { "*_file", "new_file", "garbage" } */
	s.strings = str0; s.count = FUNC0(str0);
	FUNC3(FUNC12(&ps, &s));

	FUNC3(FUNC6(&m, idx, 0, ps));
	FUNC2(9, FUNC8(m));
	FUNC2(0, FUNC10(m));
	FUNC1("current_file", FUNC7(m, 0));
	FUNC1("modified_file", FUNC7(m, 1));
	FUNC1("staged_changes_modified_file", FUNC7(m, 2));
	FUNC1("staged_new_file", FUNC7(m, 3));
	FUNC1("staged_new_file_deleted_file", FUNC7(m, 4));
	FUNC1("staged_new_file_modified_file", FUNC7(m, 5));
	FUNC1("subdir/current_file", FUNC7(m, 6));
	FUNC1("subdir/deleted_file", FUNC7(m, 7));
	FUNC1("subdir/modified_file", FUNC7(m, 8));
	FUNC1(NULL, FUNC7(m, 9));
	FUNC11(m);

	FUNC3(FUNC6(&m, idx,
		GIT_PATHSPEC_FIND_FAILURES, ps));
	FUNC2(9, FUNC8(m));
	FUNC2(2, FUNC10(m));
	FUNC1("new_file", FUNC9(m, 0));
	FUNC1("garbage", FUNC9(m, 1));
	FUNC1(NULL, FUNC9(m, 2));
	FUNC11(m);

	FUNC5(ps);
	FUNC4(idx);
}