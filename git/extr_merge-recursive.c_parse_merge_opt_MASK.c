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
struct merge_options {char* subtree_shift; long xdl_opts; int renormalize; int detect_renames; int rename_score; int /*<<< orphan*/  recursive_variant; } ;

/* Variables and functions */
 void* FUNC0 (struct merge_options*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct merge_options*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct merge_options*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HISTOGRAM_DIFF ; 
 int /*<<< orphan*/  IGNORE_CR_AT_EOL ; 
 int /*<<< orphan*/  IGNORE_WHITESPACE ; 
 int /*<<< orphan*/  IGNORE_WHITESPACE_AT_EOL ; 
 int /*<<< orphan*/  IGNORE_WHITESPACE_CHANGE ; 
 int /*<<< orphan*/  MERGE_VARIANT_OURS ; 
 int /*<<< orphan*/  MERGE_VARIANT_THEIRS ; 
 int /*<<< orphan*/  NEED_MINIMAL ; 
 int /*<<< orphan*/  PATIENCE_DIFF ; 
 long XDF_DIFF_ALGORITHM_MASK ; 
 long FUNC3 (char const*) ; 
 int FUNC4 (char const**) ; 
 scalar_t__ FUNC5 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 

int FUNC7(struct merge_options *opt, const char *s)
{
	const char *arg;

	if (!s || !*s)
		return -1;
	if (!FUNC6(s, "ours"))
		opt->recursive_variant = MERGE_VARIANT_OURS;
	else if (!FUNC6(s, "theirs"))
		opt->recursive_variant = MERGE_VARIANT_THEIRS;
	else if (!FUNC6(s, "subtree"))
		opt->subtree_shift = "";
	else if (FUNC5(s, "subtree=", &arg))
		opt->subtree_shift = arg;
	else if (!FUNC6(s, "patience"))
		opt->xdl_opts = FUNC0(opt, PATIENCE_DIFF);
	else if (!FUNC6(s, "histogram"))
		opt->xdl_opts = FUNC0(opt, HISTOGRAM_DIFF);
	else if (FUNC5(s, "diff-algorithm=", &arg)) {
		long value = FUNC3(arg);
		if (value < 0)
			return -1;
		/* clear out previous settings */
		FUNC1(opt, NEED_MINIMAL);
		opt->xdl_opts &= ~XDF_DIFF_ALGORITHM_MASK;
		opt->xdl_opts |= value;
	}
	else if (!FUNC6(s, "ignore-space-change"))
		FUNC2(opt, IGNORE_WHITESPACE_CHANGE);
	else if (!FUNC6(s, "ignore-all-space"))
		FUNC2(opt, IGNORE_WHITESPACE);
	else if (!FUNC6(s, "ignore-space-at-eol"))
		FUNC2(opt, IGNORE_WHITESPACE_AT_EOL);
	else if (!FUNC6(s, "ignore-cr-at-eol"))
		FUNC2(opt, IGNORE_CR_AT_EOL);
	else if (!FUNC6(s, "renormalize"))
		opt->renormalize = 1;
	else if (!FUNC6(s, "no-renormalize"))
		opt->renormalize = 0;
	else if (!FUNC6(s, "no-renames"))
		opt->detect_renames = 0;
	else if (!FUNC6(s, "find-renames")) {
		opt->detect_renames = 1;
		opt->rename_score = 0;
	}
	else if (FUNC5(s, "find-renames=", &arg) ||
		 FUNC5(s, "rename-threshold=", &arg)) {
		if ((opt->rename_score = FUNC4(&arg)) == -1 || *arg != 0)
			return -1;
		opt->detect_renames = 1;
	}
	/*
	 * Please update $__git_merge_strategy_options in
	 * git-completion.bash when you add new options
	 */
	else
		return -1;
	return 0;
}