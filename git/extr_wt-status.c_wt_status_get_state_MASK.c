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
struct wt_status_state {int merge_in_progress; int cherry_pick_in_progress; int revert_in_progress; int /*<<< orphan*/  revert_head_oid; int /*<<< orphan*/  cherry_pick_head_oid; } ;
struct stat {int dummy; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
typedef  enum replay_action { ____Placeholder_replay_action } replay_action ;

/* Variables and functions */
 int REPLAY_PICK ; 
 int /*<<< orphan*/  FUNC0 (char*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC1 (struct repository*) ; 
 int /*<<< orphan*/  FUNC2 (struct repository*) ; 
 int /*<<< orphan*/  FUNC3 (struct repository*) ; 
 struct object_id null_oid ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct object_id*) ; 
 int /*<<< orphan*/  FUNC5 (struct repository*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct wt_status_state*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,struct wt_status_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct repository*,struct wt_status_state*) ; 

void FUNC10(struct repository *r,
			 struct wt_status_state *state,
			 int get_detached_from)
{
	struct stat st;
	struct object_id oid;
	enum replay_action action;

	if (!FUNC6(FUNC2(r), &st)) {
		FUNC8(NULL, state);
		state->merge_in_progress = 1;
	} else if (FUNC8(NULL, state)) {
		;		/* all set */
	} else if (!FUNC6(FUNC1(r), &st) &&
			!FUNC0("CHERRY_PICK_HEAD", &oid)) {
		state->cherry_pick_in_progress = 1;
		FUNC4(&state->cherry_pick_head_oid, &oid);
	}
	FUNC7(NULL, state);
	if (!FUNC6(FUNC3(r), &st) &&
	    !FUNC0("REVERT_HEAD", &oid)) {
		state->revert_in_progress = 1;
		FUNC4(&state->revert_head_oid, &oid);
	}
	if (!FUNC5(r, &action)) {
		if (action == REPLAY_PICK) {
			state->cherry_pick_in_progress = 1;
			FUNC4(&state->cherry_pick_head_oid, &null_oid);
		} else {
			state->revert_in_progress = 1;
			FUNC4(&state->revert_head_oid, &null_oid);
		}
	}
	if (get_detached_from)
		FUNC9(r, state);
}