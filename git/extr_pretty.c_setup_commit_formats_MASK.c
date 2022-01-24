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
struct cmt_fmt_map {char* member_0; int member_2; int member_3; int /*<<< orphan*/  member_1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cmt_fmt_map*) ; 
 int /*<<< orphan*/  CMIT_FMT_EMAIL ; 
 int /*<<< orphan*/  CMIT_FMT_FULL ; 
 int /*<<< orphan*/  CMIT_FMT_FULLER ; 
 int /*<<< orphan*/  CMIT_FMT_MBOXRD ; 
 int /*<<< orphan*/  CMIT_FMT_MEDIUM ; 
 int /*<<< orphan*/  CMIT_FMT_ONELINE ; 
 int /*<<< orphan*/  CMIT_FMT_RAW ; 
 int /*<<< orphan*/  CMIT_FMT_SHORT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cmt_fmt_map*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  builtin_formats_len ; 
 int /*<<< orphan*/  commit_formats ; 
 int /*<<< orphan*/  commit_formats_alloc ; 
 int /*<<< orphan*/  commit_formats_len ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_pretty_formats_config ; 

__attribute__((used)) static void FUNC4(void)
{
	struct cmt_fmt_map builtin_formats[] = {
		{ "raw",	CMIT_FMT_RAW,		0,	0 },
		{ "medium",	CMIT_FMT_MEDIUM,	0,	8 },
		{ "short",	CMIT_FMT_SHORT,		0,	0 },
		{ "email",	CMIT_FMT_EMAIL,		0,	0 },
		{ "mboxrd",	CMIT_FMT_MBOXRD,	0,	0 },
		{ "fuller",	CMIT_FMT_FULLER,	0,	8 },
		{ "full",	CMIT_FMT_FULL,		0,	8 },
		{ "oneline",	CMIT_FMT_ONELINE,	1,	0 }
		/*
		 * Please update $__git_log_pretty_formats in
		 * git-completion.bash when you add new formats.
		 */
	};
	commit_formats_len = FUNC1(builtin_formats);
	builtin_formats_len = commit_formats_len;
	FUNC0(commit_formats, commit_formats_len, commit_formats_alloc);
	FUNC2(commit_formats, builtin_formats,
		   FUNC1(builtin_formats));

	FUNC3(git_pretty_formats_config, NULL);
}