#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  git_filter_list ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILTER_TO_WORKTREE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(void)
{
	git_filter_list *fl;

	FUNC2(FUNC5(
		&fl, g_repo, NULL, "herofile", GIT_FILTER_TO_WORKTREE, 0));
	/* expect: bitflip, reverse, crlf */
	FUNC1(3, FUNC4(fl));
	FUNC3(fl);

	FUNC2(FUNC5(
		&fl, g_repo, NULL, "herocorp", GIT_FILTER_TO_WORKTREE, 0));
	/* expect: bitflip, reverse - possibly crlf depending on global config */
	{
		size_t flen = FUNC4(fl);
		FUNC0(flen == 2 || flen == 3);
	}
	FUNC3(fl);

	FUNC2(FUNC5(
		&fl, g_repo, NULL, "hero.bin", GIT_FILTER_TO_WORKTREE, 0));
	/* expect: bitflip, reverse */
	FUNC1(2, FUNC4(fl));
	FUNC3(fl);

	FUNC2(FUNC5(
		&fl, g_repo, NULL, "heroflip", GIT_FILTER_TO_WORKTREE, 0));
	/* expect: bitflip (because of -reverse) */
	FUNC1(1, FUNC4(fl));
	FUNC3(fl);

	FUNC2(FUNC5(
		&fl, g_repo, NULL, "doesntapplytome.bin",
		GIT_FILTER_TO_WORKTREE, 0));
	/* expect: none */
	FUNC1(0, FUNC4(fl));
	FUNC3(fl);
}