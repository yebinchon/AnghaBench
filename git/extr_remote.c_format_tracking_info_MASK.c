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
struct strbuf {int dummy; } ;
struct branch {int dummy; } ;
typedef  enum ahead_behind_flags { ____Placeholder_ahead_behind_flags } ahead_behind_flags ;

/* Variables and functions */
 int AHEAD_BEHIND_QUICK ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ advice_status_hints ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct branch*,int*,int*,char const**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,int /*<<< orphan*/ ) ; 

int FUNC7(struct branch *branch, struct strbuf *sb,
			 enum ahead_behind_flags abf)
{
	int ours, theirs, sti;
	const char *full_base;
	char *base;
	int upstream_is_gone = 0;

	sti = FUNC4(branch, &ours, &theirs, &full_base, 0, abf);
	if (sti < 0) {
		if (!full_base)
			return 0;
		upstream_is_gone = 1;
	}

	base = FUNC3(full_base, 0);
	if (upstream_is_gone) {
		FUNC5(sb,
			FUNC1("Your branch is based on '%s', but the upstream is gone.\n"),
			base);
		if (advice_status_hints)
			FUNC6(sb,
				FUNC1("  (use \"git branch --unset-upstream\" to fixup)\n"));
	} else if (!sti) {
		FUNC5(sb,
			FUNC1("Your branch is up to date with '%s'.\n"),
			base);
	} else if (abf == AHEAD_BEHIND_QUICK) {
		FUNC5(sb,
			    FUNC1("Your branch and '%s' refer to different commits.\n"),
			    base);
		if (advice_status_hints)
			FUNC5(sb, FUNC1("  (use \"%s\" for details)\n"),
				    "git status --ahead-behind");
	} else if (!theirs) {
		FUNC5(sb,
			FUNC0("Your branch is ahead of '%s' by %d commit.\n",
			   "Your branch is ahead of '%s' by %d commits.\n",
			   ours),
			base, ours);
		if (advice_status_hints)
			FUNC6(sb,
				FUNC1("  (use \"git push\" to publish your local commits)\n"));
	} else if (!ours) {
		FUNC5(sb,
			FUNC0("Your branch is behind '%s' by %d commit, "
			       "and can be fast-forwarded.\n",
			   "Your branch is behind '%s' by %d commits, "
			       "and can be fast-forwarded.\n",
			   theirs),
			base, theirs);
		if (advice_status_hints)
			FUNC6(sb,
				FUNC1("  (use \"git pull\" to update your local branch)\n"));
	} else {
		FUNC5(sb,
			FUNC0("Your branch and '%s' have diverged,\n"
			       "and have %d and %d different commit each, "
			       "respectively.\n",
			   "Your branch and '%s' have diverged,\n"
			       "and have %d and %d different commits each, "
			       "respectively.\n",
			   ours + theirs),
			base, ours, theirs);
		if (advice_status_hints)
			FUNC6(sb,
				FUNC1("  (use \"git pull\" to merge the remote branch into yours)\n"));
	}
	FUNC2(base);
	return 1;
}