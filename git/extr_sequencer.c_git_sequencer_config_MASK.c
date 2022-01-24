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
struct replay_opts {int explicit_cleanup; int /*<<< orphan*/ * gpg_sign; int /*<<< orphan*/  default_msg_cleanup; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_MSG_CLEANUP_ALL ; 
 int /*<<< orphan*/  COMMIT_MSG_CLEANUP_NONE ; 
 int /*<<< orphan*/  COMMIT_MSG_CLEANUP_SCISSORS ; 
 int /*<<< orphan*/  COMMIT_MSG_CLEANUP_SPACE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 int FUNC3 (char const**,char const*,char const*) ; 
 int FUNC4 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(const char *k, const char *v, void *cb)
{
	struct replay_opts *opts = cb;
	int status;

	if (!FUNC6(k, "commit.cleanup")) {
		const char *s;

		status = FUNC3(&s, k, v);
		if (status)
			return status;

		if (!FUNC6(s, "verbatim")) {
			opts->default_msg_cleanup = COMMIT_MSG_CLEANUP_NONE;
			opts->explicit_cleanup = 1;
		} else if (!FUNC6(s, "whitespace")) {
			opts->default_msg_cleanup = COMMIT_MSG_CLEANUP_SPACE;
			opts->explicit_cleanup = 1;
		} else if (!FUNC6(s, "strip")) {
			opts->default_msg_cleanup = COMMIT_MSG_CLEANUP_ALL;
			opts->explicit_cleanup = 1;
		} else if (!FUNC6(s, "scissors")) {
			opts->default_msg_cleanup = COMMIT_MSG_CLEANUP_SCISSORS;
			opts->explicit_cleanup = 1;
		} else {
			FUNC7(FUNC0("invalid commit message cleanup mode '%s'"),
				  s);
		}

		FUNC1((char *)s);
		return status;
	}

	if (!FUNC6(k, "commit.gpgsign")) {
		opts->gpg_sign = FUNC2(k, v) ? FUNC8("") : NULL;
		return 0;
	}

	status = FUNC5(k, v, NULL);
	if (status)
		return status;

	return FUNC4(k, v, NULL);
}