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
struct TYPE_2__ {int /*<<< orphan*/  cherry_pick_head_oid; } ;
struct wt_status {TYPE_1__ state; scalar_t__ hints; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_ABBREV ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct wt_status*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct wt_status*,char const*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (struct wt_status*) ; 

__attribute__((used)) static void FUNC6(struct wt_status *s,
					 const char *color)
{
	if (FUNC3(&s->state.cherry_pick_head_oid))
		FUNC4(s, color,
			FUNC0("Cherry-pick currently in progress."));
	else
		FUNC4(s, color,
			FUNC0("You are currently cherry-picking commit %s."),
			FUNC1(&s->state.cherry_pick_head_oid,
					   DEFAULT_ABBREV));

	if (s->hints) {
		if (FUNC2(s))
			FUNC4(s, color,
				FUNC0("  (fix conflicts and run \"git cherry-pick --continue\")"));
		else if (FUNC3(&s->state.cherry_pick_head_oid))
			FUNC4(s, color,
				FUNC0("  (run \"git cherry-pick --continue\" to continue)"));
		else
			FUNC4(s, color,
				FUNC0("  (all conflicts fixed: run \"git cherry-pick --continue\")"));
		FUNC4(s, color,
			FUNC0("  (use \"git cherry-pick --skip\" to skip this patch)"));
		FUNC4(s, color,
			FUNC0("  (use \"git cherry-pick --abort\" to cancel the cherry-pick operation)"));
	}
	FUNC5(s);
}