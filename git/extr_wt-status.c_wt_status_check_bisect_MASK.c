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
struct wt_status_state {int bisect_in_progress; int /*<<< orphan*/  branch; } ;
struct worktree {int dummy; } ;
struct stat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct worktree const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (struct worktree const*,char*) ; 

int FUNC3(const struct worktree *wt,
			   struct wt_status_state *state)
{
	struct stat st;

	if (!FUNC1(FUNC2(wt, "BISECT_LOG"), &st)) {
		state->bisect_in_progress = 1;
		state->branch = FUNC0(wt, "BISECT_START");
		return 1;
	}
	return 0;
}