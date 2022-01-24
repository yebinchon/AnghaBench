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
struct worktree {int is_current; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* FUNC5 (struct worktree*) ; 

__attribute__((used)) static void FUNC6(struct worktree **worktrees)
{
	char *git_dir = FUNC1(FUNC4());
	int i;

	for (i = 0; worktrees[i]; i++) {
		struct worktree *wt = worktrees[i];
		const char *wt_git_dir = FUNC5(wt);

		if (!FUNC3(git_dir, FUNC0(wt_git_dir))) {
			wt->is_current = 1;
			break;
		}
	}
	FUNC2(git_dir);
}