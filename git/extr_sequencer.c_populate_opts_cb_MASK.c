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
struct replay_opts {int explicit_cleanup; int /*<<< orphan*/  default_msg_cleanup; int /*<<< orphan*/  allow_rerere_auto; scalar_t__ xopts_nr; int /*<<< orphan*/ * xopts; int /*<<< orphan*/  xopts_alloc; int /*<<< orphan*/  gpg_sign; int /*<<< orphan*/  strategy; int /*<<< orphan*/  mainline; void* allow_ff; void* record_origin; void* signoff; void* keep_redundant_commits; void* allow_empty_message; void* allow_empty; void* edit; void* no_commit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RERERE_AUTOUPDATE ; 
 int /*<<< orphan*/  RERERE_NOAUTOUPDATE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int) ; 
 void* FUNC4 (char const*,char const*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

__attribute__((used)) static int FUNC9(const char *key, const char *value, void *data)
{
	struct replay_opts *opts = data;
	int error_flag = 1;

	if (!value)
		error_flag = 0;
	else if (!FUNC7(key, "options.no-commit"))
		opts->no_commit = FUNC4(key, value, &error_flag);
	else if (!FUNC7(key, "options.edit"))
		opts->edit = FUNC4(key, value, &error_flag);
	else if (!FUNC7(key, "options.allow-empty"))
		opts->allow_empty =
			FUNC4(key, value, &error_flag);
	else if (!FUNC7(key, "options.allow-empty-message"))
		opts->allow_empty_message =
			FUNC4(key, value, &error_flag);
	else if (!FUNC7(key, "options.keep-redundant-commits"))
		opts->keep_redundant_commits =
			FUNC4(key, value, &error_flag);
	else if (!FUNC7(key, "options.signoff"))
		opts->signoff = FUNC4(key, value, &error_flag);
	else if (!FUNC7(key, "options.record-origin"))
		opts->record_origin = FUNC4(key, value, &error_flag);
	else if (!FUNC7(key, "options.allow-ff"))
		opts->allow_ff = FUNC4(key, value, &error_flag);
	else if (!FUNC7(key, "options.mainline"))
		opts->mainline = FUNC5(key, value);
	else if (!FUNC7(key, "options.strategy"))
		FUNC6(&opts->strategy, key, value);
	else if (!FUNC7(key, "options.gpg-sign"))
		FUNC6(&opts->gpg_sign, key, value);
	else if (!FUNC7(key, "options.strategy-option")) {
		FUNC0(opts->xopts, opts->xopts_nr + 1, opts->xopts_alloc);
		opts->xopts[opts->xopts_nr++] = FUNC8(value);
	} else if (!FUNC7(key, "options.allow-rerere-auto"))
		opts->allow_rerere_auto =
			FUNC4(key, value, &error_flag) ?
				RERERE_AUTOUPDATE : RERERE_NOAUTOUPDATE;
	else if (!FUNC7(key, "options.default-msg-cleanup")) {
		opts->explicit_cleanup = 1;
		opts->default_msg_cleanup = FUNC3(value, 1);
	} else
		return FUNC2(FUNC1("invalid key: %s"), key);

	if (!error_flag)
		return FUNC2(FUNC1("invalid value for %s: %s"), key, value);

	return 0;
}