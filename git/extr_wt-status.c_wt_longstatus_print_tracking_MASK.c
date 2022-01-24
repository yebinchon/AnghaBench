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
typedef  int uint64_t ;
struct wt_status {int /*<<< orphan*/  fp; scalar_t__ display_comment_prefix; int /*<<< orphan*/  ahead_behind_flags; int /*<<< orphan*/  branch; int /*<<< orphan*/  is_initial; } ;
struct strbuf {char* buf; } ;
struct branch {int dummy; } ;

/* Variables and functions */
 int AB_DELAY_WARNING_IN_MS ; 
 int /*<<< orphan*/  AHEAD_BEHIND_FULL ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  WT_STATUS_HEADER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ advice_status_ahead_behind_warning ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct branch* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct wt_status*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 char comment_line_char ; 
 int /*<<< orphan*/  FUNC5 (struct branch*,struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char const**) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 char* FUNC11 (char const*,char) ; 

__attribute__((used)) static void FUNC12(struct wt_status *s)
{
	struct strbuf sb = STRBUF_INIT;
	const char *cp, *ep, *branch_name;
	struct branch *branch;
	char comment_line_string[3];
	int i;
	uint64_t t_begin = 0;

	FUNC1(s->branch && !s->is_initial);
	if (!FUNC8(s->branch, "refs/heads/", &branch_name))
		return;
	branch = FUNC2(branch_name);

	t_begin = FUNC7();

	if (!FUNC5(branch, &sb, s->ahead_behind_flags))
		return;

	if (advice_status_ahead_behind_warning &&
	    s->ahead_behind_flags == AHEAD_BEHIND_FULL) {
		uint64_t t_delta_in_ms = (FUNC7() - t_begin) / 1000000;
		if (t_delta_in_ms > AB_DELAY_WARNING_IN_MS) {
			FUNC9(&sb, FUNC0("\n"
					   "It took %.2f seconds to compute the branch ahead/behind values.\n"
					   "You can use '--no-ahead-behind' to avoid this.\n"),
				    t_delta_in_ms / 1000.0);
		}
	}

	i = 0;
	if (s->display_comment_prefix) {
		comment_line_string[i++] = comment_line_char;
		comment_line_string[i++] = ' ';
	}
	comment_line_string[i] = '\0';

	for (cp = sb.buf; (ep = FUNC11(cp, '\n')) != NULL; cp = ep + 1)
		FUNC4(s->fp, FUNC3(WT_STATUS_HEADER, s),
				 "%s%.*s", comment_line_string,
				 (int)(ep - cp), cp);
	if (s->display_comment_prefix)
		FUNC4(s->fp, FUNC3(WT_STATUS_HEADER, s), "%c",
				 comment_line_char);
	else
		FUNC6("\n", s->fp);
	FUNC10(&sb);
}