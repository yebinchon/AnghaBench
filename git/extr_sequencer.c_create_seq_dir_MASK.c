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
typedef  enum replay_action { ____Placeholder_replay_action } replay_action ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  REPLAY_PICK 129 
#define  REPLAY_REVERT 128 
 char* FUNC1 (char*) ; 
 scalar_t__ advice_sequencer_in_use ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct repository*) ; 
 int /*<<< orphan*/  FUNC7 (struct repository*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct repository*,int*) ; 

__attribute__((used)) static int FUNC11(struct repository *r)
{
	enum replay_action action;
	const char *in_progress_error = NULL;
	const char *in_progress_advice = NULL;
	unsigned int advise_skip = FUNC5(FUNC7(r)) ||
				FUNC5(FUNC6(r));

	if (!FUNC10(r, &action)) {
		switch (action) {
		case REPLAY_REVERT:
			in_progress_error = FUNC1("revert is already in progress");
			in_progress_advice =
			FUNC1("try \"git revert (--continue | %s--abort | --quit)\"");
			break;
		case REPLAY_PICK:
			in_progress_error = FUNC1("cherry-pick is already in progress");
			in_progress_advice =
			FUNC1("try \"git cherry-pick (--continue | %s--abort | --quit)\"");
			break;
		default:
			FUNC0("unexpected action in create_seq_dir");
		}
	}
	if (in_progress_error) {
		FUNC3("%s", in_progress_error);
		if (advice_sequencer_in_use)
			FUNC2(in_progress_advice,
				advise_skip ? "--skip | " : "");
		return -1;
	}
	if (FUNC9(FUNC8(), 0777) < 0)
		return FUNC4(FUNC1("could not create sequencer directory '%s'"),
				   FUNC8());

	return 0;
}