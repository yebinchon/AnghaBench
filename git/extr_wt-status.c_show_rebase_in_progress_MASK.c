#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  onto; scalar_t__ branch; scalar_t__ rebase_in_progress; } ;
struct wt_status {int /*<<< orphan*/  amend; scalar_t__ hints; TYPE_1__ state; int /*<<< orphan*/  repo; } ;
struct stat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct wt_status*) ; 
 int /*<<< orphan*/  FUNC3 (struct wt_status*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct wt_status*,char const*) ; 
 scalar_t__ FUNC5 (struct wt_status*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC7 (struct wt_status*,char const*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (struct wt_status*) ; 

__attribute__((used)) static void FUNC9(struct wt_status *s,
				    const char *color)
{
	struct stat st;

	FUNC4(s, color);
	if (FUNC2(s)) {
		FUNC3(s, color);
		if (s->hints) {
			FUNC7(s, color,
				FUNC0("  (fix conflicts and then run \"git rebase --continue\")"));
			FUNC7(s, color,
				FUNC0("  (use \"git rebase --skip\" to skip this patch)"));
			FUNC7(s, color,
				FUNC0("  (use \"git rebase --abort\" to check out the original branch)"));
		}
	} else if (s->state.rebase_in_progress ||
		   !FUNC6(FUNC1(s->repo), &st)) {
		FUNC3(s, color);
		if (s->hints)
			FUNC7(s, color,
				FUNC0("  (all conflicts fixed: run \"git rebase --continue\")"));
	} else if (FUNC5(s)) {
		if (s->state.branch)
			FUNC7(s, color,
					 FUNC0("You are currently splitting a commit while rebasing branch '%s' on '%s'."),
					 s->state.branch,
					 s->state.onto);
		else
			FUNC7(s, color,
					 FUNC0("You are currently splitting a commit during a rebase."));
		if (s->hints)
			FUNC7(s, color,
				FUNC0("  (Once your working directory is clean, run \"git rebase --continue\")"));
	} else {
		if (s->state.branch)
			FUNC7(s, color,
					 FUNC0("You are currently editing a commit while rebasing branch '%s' on '%s'."),
					 s->state.branch,
					 s->state.onto);
		else
			FUNC7(s, color,
					 FUNC0("You are currently editing a commit during a rebase."));
		if (s->hints && !s->amend) {
			FUNC7(s, color,
				FUNC0("  (use \"git commit --amend\" to amend the current commit)"));
			FUNC7(s, color,
				FUNC0("  (use \"git rebase --continue\" once you are satisfied with your changes)"));
		}
	}
	FUNC8(s);
}