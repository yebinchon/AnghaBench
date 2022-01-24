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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const char *filename, const char *filter)
{
	git_filter_list *fl;
	int filtered;

	FUNC0(FUNC3(
		&fl, g_repo, NULL, filename, GIT_FILTER_TO_WORKTREE, 0));
	filtered = FUNC1(fl, filter);
	FUNC2(fl);

	return filtered;
}