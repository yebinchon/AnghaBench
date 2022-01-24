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
struct TYPE_3__ {char** member_0; int /*<<< orphan*/  member_1; } ;
typedef  TYPE_1__ git_strarray ;
typedef  int /*<<< orphan*/  git_pathspec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int /*<<< orphan*/  GIT_PATHSPEC_IGNORE_CASE ; 
 int /*<<< orphan*/  GIT_PATHSPEC_NO_GLOB ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,TYPE_1__*) ; 

void FUNC6(void)
{
	static char *strings[] = { "one", "two*", "!three*", "*four" };
	git_strarray s = { strings, FUNC0(strings) };
	git_pathspec *ps;

	FUNC2(FUNC5(&ps, &s));

	FUNC1(FUNC4(ps, 0, "one"));
	FUNC1(!FUNC4(ps, 0, "ONE"));
	FUNC1(FUNC4(ps, GIT_PATHSPEC_IGNORE_CASE, "ONE"));
	FUNC1(FUNC4(ps, 0, "two"));
	FUNC1(FUNC4(ps, 0, "two.txt"));
	FUNC1(!FUNC4(ps, 0, "three.txt"));
	FUNC1(FUNC4(ps, 0, "anything.four"));
	FUNC1(!FUNC4(ps, 0, "three.four"));
	FUNC1(!FUNC4(ps, 0, "nomatch"));
	FUNC1(!FUNC4(ps, GIT_PATHSPEC_NO_GLOB, "two"));
	FUNC1(FUNC4(ps, GIT_PATHSPEC_NO_GLOB, "two*"));
	FUNC1(!FUNC4(ps, GIT_PATHSPEC_NO_GLOB, "anyfour"));
	FUNC1(FUNC4(ps, GIT_PATHSPEC_NO_GLOB, "*four"));

	FUNC3(ps);
}