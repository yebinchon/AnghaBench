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
struct replay_opts {char* strategy; scalar_t__ xopts_nr; scalar_t__ allow_rerere_auto; char* gpg_sign; scalar_t__ reschedule_failed_exec; scalar_t__ signoff; scalar_t__ verbose; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 scalar_t__ RERERE_AUTOUPDATE ; 
 scalar_t__ RERERE_NOAUTOUPDATE ; 
 char* FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct replay_opts*) ; 

int FUNC14(struct replay_opts *opts, const char *head_name,
		      struct commit *onto, const char *orig_head)
{
	const char *quiet = FUNC0("GIT_QUIET");

	if (head_name)
		FUNC12(FUNC4(), "%s\n", head_name);
	if (onto)
		FUNC12(FUNC5(), "%s\n",
			   FUNC1(&onto->object.oid));
	if (orig_head)
		FUNC12(FUNC6(), "%s\n", orig_head);

	if (quiet)
		FUNC12(FUNC7(), "%s\n", quiet);
	if (opts->verbose)
		FUNC12(FUNC11(), "%s", "");
	if (opts->strategy)
		FUNC12(FUNC10(), "%s\n", opts->strategy);
	if (opts->xopts_nr > 0)
		FUNC13(opts);

	if (opts->allow_rerere_auto == RERERE_AUTOUPDATE)
		FUNC12(FUNC2(), "--rerere-autoupdate\n");
	else if (opts->allow_rerere_auto == RERERE_NOAUTOUPDATE)
		FUNC12(FUNC2(), "--no-rerere-autoupdate\n");

	if (opts->gpg_sign)
		FUNC12(FUNC3(), "-S%s\n", opts->gpg_sign);
	if (opts->signoff)
		FUNC12(FUNC9(), "--signoff\n");
	if (opts->reschedule_failed_exec)
		FUNC12(FUNC8(), "%s", "");

	return 0;
}