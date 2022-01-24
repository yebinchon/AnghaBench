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
struct replay_opts {int /*<<< orphan*/  action; } ;

/* Variables and functions */
 struct replay_opts REPLAY_OPTS_INIT ; 
 int /*<<< orphan*/  REPLAY_PICK ; 
 int /*<<< orphan*/  REPLAY_REVERT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct repository*) ; 
 int /*<<< orphan*/  FUNC3 (struct repository*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct replay_opts*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct repository *r, int verbose)
{
	struct replay_opts opts = REPLAY_OPTS_INIT;
	int need_cleanup = 0;

	if (FUNC1(FUNC2(r))) {
		if (!FUNC6(FUNC2(r)) && verbose)
			FUNC7(FUNC0("cancelling a cherry picking in progress"));
		opts.action = REPLAY_PICK;
		need_cleanup = 1;
	}

	if (FUNC1(FUNC3(r))) {
		if (!FUNC6(FUNC3(r)) && verbose)
			FUNC7(FUNC0("cancelling a revert in progress"));
		opts.action = REPLAY_REVERT;
		need_cleanup = 1;
	}

	if (!need_cleanup)
		return;

	if (!FUNC4())
		return;

	FUNC5(&opts);
}