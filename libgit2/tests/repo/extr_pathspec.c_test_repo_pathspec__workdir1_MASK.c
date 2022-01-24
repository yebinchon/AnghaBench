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
 int GIT_PATHSPEC_FIND_FAILURES ; 
 int GIT_PATHSPEC_IGNORE_CASE ; 
 int GIT_PATHSPEC_NO_MATCH_ERROR ; 
 int GIT_PATHSPEC_USE_CASE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,TYPE_1__*) ; 
 int /*<<< orphan*/  str1 ; 

void FUNC10(void)
{
	git_strarray s;
	git_pathspec *ps;
	git_pathspec_match_list *m;

	/* { "*_FILE", "NEW_FILE", "GARBAGE" } */
	s.strings = str1; s.count = FUNC0(str1);
	FUNC3(FUNC9(&ps, &s));

	FUNC3(FUNC8(&m, g_repo,
		GIT_PATHSPEC_IGNORE_CASE, ps));
	FUNC1(10, FUNC5(m));
	FUNC7(m);

	FUNC3(FUNC8(&m, g_repo,
		GIT_PATHSPEC_USE_CASE, ps));
	FUNC1(0, FUNC5(m));
	FUNC7(m);

	FUNC2(FUNC8(&m, g_repo,
		GIT_PATHSPEC_USE_CASE | GIT_PATHSPEC_NO_MATCH_ERROR, ps));

	FUNC3(FUNC8(&m, g_repo,
		GIT_PATHSPEC_IGNORE_CASE | GIT_PATHSPEC_FIND_FAILURES, ps));
	FUNC1(10, FUNC5(m));
	FUNC1(1, FUNC6(m));
	FUNC7(m);

	FUNC3(FUNC8(&m, g_repo,
		GIT_PATHSPEC_USE_CASE | GIT_PATHSPEC_FIND_FAILURES, ps));
	FUNC1(0, FUNC5(m));
	FUNC1(3, FUNC6(m));
	FUNC7(m);

	FUNC4(ps);
}