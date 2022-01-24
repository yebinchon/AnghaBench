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
struct wt_status_state {scalar_t__ bisect_in_progress; scalar_t__ revert_in_progress; scalar_t__ cherry_pick_in_progress; scalar_t__ rebase_interactive_in_progress; scalar_t__ rebase_in_progress; scalar_t__ am_in_progress; scalar_t__ merge_in_progress; } ;
struct wt_status {int /*<<< orphan*/  fp; struct wt_status_state state; } ;

/* Variables and functions */
 int /*<<< orphan*/  WT_STATUS_HEADER ; 
 char* FUNC0 (int /*<<< orphan*/ ,struct wt_status*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wt_status*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct wt_status*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct wt_status*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct wt_status*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct wt_status*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct wt_status*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct wt_status*,char const*) ; 

__attribute__((used)) static void FUNC9(struct wt_status *s)
{
	const char *state_color = FUNC0(WT_STATUS_HEADER, s);
	struct wt_status_state *state = &s->state;

	if (state->merge_in_progress) {
		if (state->rebase_interactive_in_progress) {
			FUNC7(s, state_color);
			FUNC1("\n", s->fp);
		}
		FUNC5(s, state_color);
	} else if (state->am_in_progress)
		FUNC2(s, state_color);
	else if (state->rebase_in_progress || state->rebase_interactive_in_progress)
		FUNC6(s, state_color);
	else if (state->cherry_pick_in_progress)
		FUNC4(s, state_color);
	else if (state->revert_in_progress)
		FUNC8(s, state_color);
	if (state->bisect_in_progress)
		FUNC3(s, state_color);
}