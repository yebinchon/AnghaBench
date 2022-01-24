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
struct repository {int dummy; } ;
struct replay_opts {int action; } ;
typedef  enum replay_action { ____Placeholder_replay_action } replay_action ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  REPLAY_PICK 129 
#define  REPLAY_REVERT 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ advice_resolve_conflict ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct repository*) ; 
 int /*<<< orphan*/  FUNC6 (struct repository*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (struct repository*,struct replay_opts*) ; 
 int /*<<< orphan*/  FUNC11 (struct repository*,int*) ; 
 scalar_t__ FUNC12 () ; 

int FUNC13(struct repository *r, struct replay_opts *opts)
{
	enum replay_action action = -1;
	FUNC11(r, &action);

	/*
	 * Check whether the subcommand requested to skip the commit is actually
	 * in progress and that it's safe to skip the commit.
	 *
	 * opts->action tells us which subcommand requested to skip the commit.
	 * If the corresponding .git/<ACTION>_HEAD exists, we know that the
	 * action is in progress and we can skip the commit.
	 *
	 * Otherwise we check that the last instruction was related to the
	 * particular subcommand we're trying to execute and barf if that's not
	 * the case.
	 *
	 * Finally we check that the rollback is "safe", i.e., has the HEAD
	 * moved? In this case, it doesn't make sense to "reset the merge" and
	 * "skip the commit" as the user already handled this by committing. But
	 * we'd not want to barf here, instead give advice on how to proceed. We
	 * only need to check that when .git/<ACTION>_HEAD doesn't exist because
	 * it gets removed when the user commits, so if it still exists we're
	 * sure the user can't have committed before.
	 */
	switch (opts->action) {
	case REPLAY_REVERT:
		if (!FUNC4(FUNC6(r))) {
			if (action != REPLAY_REVERT)
				return FUNC3(FUNC1("no revert in progress"));
			if (!FUNC9())
				goto give_advice;
		}
		break;
	case REPLAY_PICK:
		if (!FUNC4(FUNC5(r))) {
			if (action != REPLAY_PICK)
				return FUNC3(FUNC1("no cherry-pick in progress"));
			if (!FUNC9())
				goto give_advice;
		}
		break;
	default:
		FUNC0("unexpected action in sequencer_skip");
	}

	if (FUNC12())
		return FUNC3(FUNC1("failed to skip the commit"));
	if (!FUNC8(FUNC7()))
		return 0;

	return FUNC10(r, opts);

give_advice:
	FUNC3(FUNC1("there is nothing to skip"));

	if (advice_resolve_conflict) {
		FUNC2(FUNC1("have you committed already?\n"
			 "try \"git %s --continue\""),
			 action == REPLAY_REVERT ? "revert" : "cherry-pick");
	}
	return -1;
}