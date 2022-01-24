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

/* Variables and functions */
 scalar_t__ MISSING_COMMIT_CHECK_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int /*<<< orphan*/ ,char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

void FUNC7(unsigned keep_empty, int command_count,
		      const char *shortrevisions, const char *shortonto,
		      struct strbuf *buf)
{
	const char *msg = FUNC1("\nCommands:\n"
"p, pick <commit> = use commit\n"
"r, reword <commit> = use commit, but edit the commit message\n"
"e, edit <commit> = use commit, but stop for amending\n"
"s, squash <commit> = use commit, but meld into previous commit\n"
"f, fixup <commit> = like \"squash\", but discard this commit's log message\n"
"x, exec <command> = run command (the rest of the line) using shell\n"
"b, break = stop here (continue rebase later with 'git rebase --continue')\n"
"d, drop <commit> = remove commit\n"
"l, label <label> = label current HEAD with a name\n"
"t, reset <label> = reset HEAD to a label\n"
"m, merge [-C <commit> | -c <commit>] <label> [# <oneline>]\n"
".       create a merge commit using the original merge commit's\n"
".       message (or the oneline, if no original merge commit was\n"
".       specified). Use -c <commit> to reword the commit message.\n"
"\n"
"These lines can be re-ordered; they are executed from top to bottom.\n");
	unsigned edit_todo = !(shortrevisions && shortonto);

	if (!edit_todo) {
		FUNC4(buf, '\n');
		FUNC5(buf, FUNC0("Rebase %s onto %s (%d command)",
					      "Rebase %s onto %s (%d commands)",
					      command_count),
				      shortrevisions, shortonto, command_count);
	}

	FUNC3(buf, msg, FUNC6(msg));

	if (FUNC2() == MISSING_COMMIT_CHECK_ERROR)
		msg = FUNC1("\nDo not remove any line. Use 'drop' "
			 "explicitly to remove a commit.\n");
	else
		msg = FUNC1("\nIf you remove a line here "
			 "THAT COMMIT WILL BE LOST.\n");

	FUNC3(buf, msg, FUNC6(msg));

	if (edit_todo)
		msg = FUNC1("\nYou are editing the todo file "
			"of an ongoing interactive rebase.\n"
			"To continue rebase after editing, run:\n"
			"    git rebase --continue\n\n");
	else
		msg = FUNC1("\nHowever, if you remove everything, "
			"the rebase will be aborted.\n\n");

	FUNC3(buf, msg, FUNC6(msg));

	if (!keep_empty) {
		msg = FUNC1("Note that empty commits are commented out");
		FUNC3(buf, msg, FUNC6(msg));
	}
}