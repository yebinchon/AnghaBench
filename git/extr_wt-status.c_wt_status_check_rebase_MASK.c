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
struct wt_status_state {int am_in_progress; int am_empty_patch; int rebase_in_progress; int rebase_interactive_in_progress; void* onto; void* branch; } ;
struct worktree {int dummy; } ;
struct stat {int /*<<< orphan*/  st_size; } ;

/* Variables and functions */
 void* FUNC0 (struct worktree const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (struct worktree const*,char*) ; 

int FUNC3(const struct worktree *wt,
			   struct wt_status_state *state)
{
	struct stat st;

	if (!FUNC1(FUNC2(wt, "rebase-apply"), &st)) {
		if (!FUNC1(FUNC2(wt, "rebase-apply/applying"), &st)) {
			state->am_in_progress = 1;
			if (!FUNC1(FUNC2(wt, "rebase-apply/patch"), &st) && !st.st_size)
				state->am_empty_patch = 1;
		} else {
			state->rebase_in_progress = 1;
			state->branch = FUNC0(wt, "rebase-apply/head-name");
			state->onto = FUNC0(wt, "rebase-apply/onto");
		}
	} else if (!FUNC1(FUNC2(wt, "rebase-merge"), &st)) {
		if (!FUNC1(FUNC2(wt, "rebase-merge/interactive"), &st))
			state->rebase_interactive_in_progress = 1;
		else
			state->rebase_in_progress = 1;
		state->branch = FUNC0(wt, "rebase-merge/head-name");
		state->onto = FUNC0(wt, "rebase-merge/onto");
	} else
		return 0;
	return 1;
}