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
typedef  int /*<<< orphan*/  git_iterator ;
struct TYPE_3__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ git_index_entry ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  g_repo ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__ const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 

void FUNC14(void)
{
	git_iterator *i;
	const git_index_entry *e;

	if (!FUNC5())
		return;

#ifndef GIT_WIN32
	if (FUNC8() == 0)
		FUNC7();
#endif

	g_repo = FUNC4("empty_standard_repo");

	FUNC6(FUNC13("empty_standard_repo/r", 0777));
	FUNC2("empty_standard_repo/r/a", "hello");
	FUNC6(FUNC13("empty_standard_repo/r/b", 0777));
	FUNC2("empty_standard_repo/r/b/problem", "not me");
	FUNC6(FUNC12("empty_standard_repo/r/b", 0000));
	FUNC6(FUNC13("empty_standard_repo/r/c", 0777));
	FUNC2("empty_standard_repo/r/c/foo", "aloha");
	FUNC2("empty_standard_repo/r/d", "final");

	FUNC3(FUNC10(
		&i, "empty_standard_repo/r", NULL));

	FUNC3(FUNC9(&e, i)); /* a */
	FUNC1("a", e->path);

	FUNC3(FUNC9(&e, i)); /* c/foo */
	FUNC1("c/foo", e->path);

	FUNC3(FUNC9(&e, i)); /* d */
	FUNC1("d", e->path);

	FUNC6(FUNC12("empty_standard_repo/r/b", 0777));

	FUNC0(GIT_ITEROVER, FUNC9(&e, i));
	FUNC11(i);
}