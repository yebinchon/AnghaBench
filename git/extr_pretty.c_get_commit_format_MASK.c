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
struct rev_info {int use_terminator; int /*<<< orphan*/  expand_tabs_in_log_default; int /*<<< orphan*/  commit_format; } ;
struct cmt_fmt_map {int is_tformat; char const* user_format; int /*<<< orphan*/  format; int /*<<< orphan*/  expand_tabs_in_log; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMIT_FMT_DEFAULT ; 
 int /*<<< orphan*/  CMIT_FMT_USERFORMAT ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 struct cmt_fmt_map* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct rev_info*,char const*,int) ; 
 scalar_t__ FUNC3 (char const*,char*,char const**) ; 
 scalar_t__ FUNC4 (char const*,char) ; 

void FUNC5(const char *arg, struct rev_info *rev)
{
	struct cmt_fmt_map *commit_format;

	rev->use_terminator = 0;
	if (!arg) {
		rev->commit_format = CMIT_FMT_DEFAULT;
		return;
	}
	if (FUNC3(arg, "format:", &arg)) {
		FUNC2(rev, arg, 0);
		return;
	}

	if (!*arg || FUNC3(arg, "tformat:", &arg) || FUNC4(arg, '%')) {
		FUNC2(rev, arg, 1);
		return;
	}

	commit_format = FUNC1(arg);
	if (!commit_format)
		FUNC0("invalid --pretty format: %s", arg);

	rev->commit_format = commit_format->format;
	rev->use_terminator = commit_format->is_tformat;
	rev->expand_tabs_in_log_default = commit_format->expand_tabs_in_log;
	if (commit_format->format == CMIT_FMT_USERFORMAT) {
		FUNC2(rev, commit_format->user_format,
				 commit_format->is_tformat);
	}
}