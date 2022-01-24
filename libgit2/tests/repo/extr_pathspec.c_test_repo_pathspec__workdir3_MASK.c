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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIT_PATHSPEC_FIND_FAILURES ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,TYPE_1__*) ; 
 int /*<<< orphan*/  str3 ; 

void FUNC11(void)
{
	git_strarray s;
	git_pathspec *ps;
	git_pathspec_match_list *m;

	/* { "!subdir", "*_file", "new_file" } */
	s.strings = str3; s.count = FUNC0(str3);
	FUNC3(FUNC10(&ps, &s));

	FUNC3(FUNC9(&m, g_repo, 0, ps));
	FUNC2(7, FUNC6(m));
	FUNC8(m);

	FUNC3(FUNC9(&m, g_repo,
		GIT_PATHSPEC_FIND_FAILURES, ps));
	FUNC2(7, FUNC6(m));
	FUNC2(0, FUNC7(m));

	FUNC1("current_file", FUNC5(m, 0));
	FUNC1("modified_file", FUNC5(m, 1));
	FUNC1("new_file", FUNC5(m, 2));
	FUNC1("staged_changes_modified_file", FUNC5(m, 3));
	FUNC1("staged_delete_modified_file", FUNC5(m, 4));
	FUNC1("staged_new_file", FUNC5(m, 5));
	FUNC1("staged_new_file_modified_file", FUNC5(m, 6));
	FUNC1(NULL, FUNC5(m, 7));

	FUNC8(m);

	FUNC4(ps);
}