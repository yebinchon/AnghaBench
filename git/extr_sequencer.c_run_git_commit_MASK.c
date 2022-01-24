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
struct replay_opts {int /*<<< orphan*/  explicit_cleanup; int /*<<< orphan*/  record_origin; int /*<<< orphan*/  signoff; int /*<<< orphan*/  gpg_sign; } ;
struct child_process {int git_cmd; int /*<<< orphan*/  args; int /*<<< orphan*/  env_array; } ;

/* Variables and functions */
 unsigned int ALLOW_EMPTY ; 
 unsigned int AMEND_MSG ; 
 struct child_process CHILD_PROCESS_INIT ; 
 unsigned int CLEANUP_MSG ; 
 unsigned int EDIT_MSG ; 
 unsigned int VERIFY_MSG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*,char const*) ; 
 char* FUNC5 (struct replay_opts*) ; 
 scalar_t__ FUNC6 (struct replay_opts*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct child_process*) ; 
 int FUNC9 (struct child_process*) ; 
 int /*<<< orphan*/  staged_changes_advice ; 

__attribute__((used)) static int FUNC10(struct repository *r,
			  const char *defmsg,
			  struct replay_opts *opts,
			  unsigned int flags)
{
	struct child_process cmd = CHILD_PROCESS_INIT;

	cmd.git_cmd = 1;

	if (FUNC6(opts) && FUNC7(&cmd.env_array)) {
		const char *gpg_opt = FUNC5(opts);

		return FUNC4(FUNC0(staged_changes_advice),
			     gpg_opt, gpg_opt);
	}

	FUNC1(&cmd.args, "commit");

	if (!(flags & VERIFY_MSG))
		FUNC1(&cmd.args, "-n");
	if ((flags & AMEND_MSG))
		FUNC1(&cmd.args, "--amend");
	if (opts->gpg_sign)
		FUNC2(&cmd.args, "-S%s", opts->gpg_sign);
	if (defmsg)
		FUNC3(&cmd.args, "-F", defmsg, NULL);
	else if (!(flags & EDIT_MSG))
		FUNC3(&cmd.args, "-C", "HEAD", NULL);
	if ((flags & CLEANUP_MSG))
		FUNC1(&cmd.args, "--cleanup=strip");
	if ((flags & EDIT_MSG))
		FUNC1(&cmd.args, "-e");
	else if (!(flags & CLEANUP_MSG) &&
		 !opts->signoff && !opts->record_origin &&
		 !opts->explicit_cleanup)
		FUNC1(&cmd.args, "--cleanup=verbatim");

	if ((flags & ALLOW_EMPTY))
		FUNC1(&cmd.args, "--allow-empty");

	if (!(flags & EDIT_MSG))
		FUNC1(&cmd.args, "--allow-empty-message");

	if (FUNC6(opts) && !(flags & EDIT_MSG))
		return FUNC9(&cmd);
	else
		return FUNC8(&cmd);
}