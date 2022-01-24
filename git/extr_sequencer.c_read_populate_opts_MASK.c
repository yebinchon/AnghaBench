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
struct strbuf {char* buf; } ;
struct replay_opts {int verbose; int quiet; int signoff; int reschedule_failed_exec; int current_fixup_count; int have_squash_onto; int /*<<< orphan*/  squash_onto; struct strbuf current_fixups; scalar_t__ allow_ff; int /*<<< orphan*/  allow_rerere_auto; int /*<<< orphan*/  gpg_sign; } ;

/* Variables and functions */
 int /*<<< orphan*/  RERERE_AUTOUPDATE ; 
 int /*<<< orphan*/  RERERE_NOAUTOUPDATE ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct replay_opts*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (struct replay_opts*) ; 
 int /*<<< orphan*/  populate_opts_cb ; 
 scalar_t__ FUNC8 (struct strbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct replay_opts*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC20 (struct strbuf*) ; 
 char* FUNC21 (char const*,char) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 

__attribute__((used)) static int FUNC24(struct replay_opts *opts)
{
	if (FUNC7(opts)) {
		struct strbuf buf = STRBUF_INIT;

		if (FUNC8(&buf, FUNC12(), 1)) {
			if (!FUNC18(buf.buf, "-S"))
				FUNC20(&buf);
			else {
				FUNC3(opts->gpg_sign);
				opts->gpg_sign = FUNC23(buf.buf + 2);
			}
			FUNC20(&buf);
		}

		if (FUNC8(&buf, FUNC10(), 1)) {
			if (!FUNC22(buf.buf, "--rerere-autoupdate"))
				opts->allow_rerere_auto = RERERE_AUTOUPDATE;
			else if (!FUNC22(buf.buf, "--no-rerere-autoupdate"))
				opts->allow_rerere_auto = RERERE_NOAUTOUPDATE;
			FUNC20(&buf);
		}

		if (FUNC2(FUNC17()))
			opts->verbose = 1;

		if (FUNC2(FUNC13()))
			opts->quiet = 1;

		if (FUNC2(FUNC15())) {
			opts->allow_ff = 0;
			opts->signoff = 1;
		}

		if (FUNC2(FUNC14()))
			opts->reschedule_failed_exec = 1;

		FUNC9(opts, &buf);
		FUNC19(&buf);

		if (FUNC8(&opts->current_fixups,
				  FUNC11(), 1)) {
			const char *p = opts->current_fixups.buf;
			opts->current_fixup_count = 1;
			while ((p = FUNC21(p, '\n'))) {
				opts->current_fixup_count++;
				p++;
			}
		}

		if (FUNC8(&buf, FUNC16(), 0)) {
			if (FUNC4(buf.buf, &opts->squash_onto) < 0)
				return FUNC1(FUNC0("unusable squash-onto"));
			opts->have_squash_onto = 1;
		}

		return 0;
	}

	if (!FUNC2(FUNC6()))
		return 0;
	/*
	 * The function git_parse_source(), called from git_config_from_file(),
	 * may die() in case of a syntactically incorrect file. We do not care
	 * about this case, though, because we wrote that file ourselves, so we
	 * are pretty certain that it is syntactically correct.
	 */
	if (FUNC5(populate_opts_cb, FUNC6(), opts) < 0)
		return FUNC1(FUNC0("malformed options sheet: '%s'"),
			FUNC6());
	return 0;
}