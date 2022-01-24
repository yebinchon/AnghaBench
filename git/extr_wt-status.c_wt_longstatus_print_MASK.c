#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ nr; } ;
struct TYPE_3__ {char* onto; char* detached_from; scalar_t__ detached_at; scalar_t__ rebase_interactive_in_progress; scalar_t__ rebase_in_progress; } ;
struct wt_status {char* branch; char const* ignore_submodule_arg; int untracked_in_ms; scalar_t__ show_stash; scalar_t__ hints; scalar_t__ show_untracked_files; scalar_t__ is_initial; TYPE_2__ untracked; scalar_t__ workdir_dirty; scalar_t__ nowarn; scalar_t__ amend; scalar_t__ committable; scalar_t__ verbose; TYPE_2__ ignored; scalar_t__ show_ignored_mode; scalar_t__ submodule_summary; scalar_t__ commit_template; TYPE_1__ state; } ;

/* Variables and functions */
 char* GIT_COLOR_NORMAL ; 
 char* HEAD_DETACHED_AT ; 
 char* HEAD_DETACHED_FROM ; 
 int /*<<< orphan*/  WT_STATUS_HEADER ; 
 int /*<<< orphan*/  WT_STATUS_NOBRANCH ; 
 int /*<<< orphan*/  WT_STATUS_ONBRANCH ; 
 char* FUNC0 (char*) ; 
 scalar_t__ advice_status_u_option ; 
 char* FUNC1 (int /*<<< orphan*/ ,struct wt_status*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (struct wt_status*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wt_status*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct wt_status*,char const*,char*,char const*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct wt_status*) ; 
 int /*<<< orphan*/  FUNC9 (struct wt_status*,TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct wt_status*) ; 
 int /*<<< orphan*/  FUNC11 (struct wt_status*) ; 
 int /*<<< orphan*/  FUNC12 (struct wt_status*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct wt_status*) ; 
 int /*<<< orphan*/  FUNC14 (struct wt_status*) ; 
 int /*<<< orphan*/  FUNC15 (struct wt_status*) ; 
 int /*<<< orphan*/  FUNC16 (struct wt_status*) ; 

__attribute__((used)) static void FUNC17(struct wt_status *s)
{
	const char *branch_color = FUNC1(WT_STATUS_ONBRANCH, s);
	const char *branch_status_color = FUNC1(WT_STATUS_HEADER, s);

	if (s->branch) {
		const char *on_what = FUNC0("On branch ");
		const char *branch_name = s->branch;
		if (!FUNC7(branch_name, "HEAD")) {
			branch_status_color = FUNC1(WT_STATUS_NOBRANCH, s);
			if (s->state.rebase_in_progress ||
			    s->state.rebase_interactive_in_progress) {
				if (s->state.rebase_interactive_in_progress)
					on_what = FUNC0("interactive rebase in progress; onto ");
				else
					on_what = FUNC0("rebase in progress; onto ");
				branch_name = s->state.onto;
			} else if (s->state.detached_from) {
				branch_name = s->state.detached_from;
				if (s->state.detached_at)
					on_what = HEAD_DETACHED_AT;
				else
					on_what = HEAD_DETACHED_FROM;
			} else {
				branch_name = "";
				on_what = FUNC0("Not currently on any branch.");
			}
		} else
			FUNC3(branch_name, "refs/heads/", &branch_name);
		FUNC4(s, FUNC1(WT_STATUS_HEADER, s), "%s", "");
		FUNC6(s, branch_status_color, "%s", on_what);
		FUNC6(s, branch_color, "%s\n", branch_name);
		if (!s->is_initial)
			FUNC13(s);
	}

	FUNC11(s);

	if (s->is_initial) {
		FUNC5(s, FUNC1(WT_STATUS_HEADER, s), "%s", "");
		FUNC5(s, FUNC1(WT_STATUS_HEADER, s),
				 s->commit_template
				 ? FUNC0("Initial commit")
				 : FUNC0("No commits yet"));
		FUNC5(s, FUNC1(WT_STATUS_HEADER, s), "%s", "");
	}

	FUNC15(s);
	FUNC14(s);
	FUNC8(s);
	if (s->submodule_summary &&
	    (!s->ignore_submodule_arg ||
	     FUNC7(s->ignore_submodule_arg, "all"))) {
		FUNC12(s, 0);  /* staged */
		FUNC12(s, 1);  /* unstaged */
	}
	if (s->show_untracked_files) {
		FUNC9(s, &s->untracked, FUNC0("Untracked files"), "add");
		if (s->show_ignored_mode)
			FUNC9(s, &s->ignored, FUNC0("Ignored files"), "add -f");
		if (advice_status_u_option && 2000 < s->untracked_in_ms) {
			FUNC5(s, GIT_COLOR_NORMAL, "%s", "");
			FUNC5(s, GIT_COLOR_NORMAL,
					 FUNC0("It took %.2f seconds to enumerate untracked files. 'status -uno'\n"
					   "may speed it up, but you have to be careful not to forget to add\n"
					   "new files yourself (see 'git help status')."),
					 s->untracked_in_ms / 1000.0);
		}
	} else if (s->committable)
		FUNC5(s, GIT_COLOR_NORMAL, FUNC0("Untracked files not listed%s"),
			s->hints
			? FUNC0(" (use -u option to show untracked files)") : "");

	if (s->verbose)
		FUNC16(s);
	if (!s->committable) {
		if (s->amend)
			FUNC5(s, GIT_COLOR_NORMAL, FUNC0("No changes"));
		else if (s->nowarn)
			; /* nothing */
		else if (s->workdir_dirty) {
			if (s->hints)
				FUNC2(FUNC0("no changes added to commit "
					 "(use \"git add\" and/or \"git commit -a\")\n"));
			else
				FUNC2(FUNC0("no changes added to commit\n"));
		} else if (s->untracked.nr) {
			if (s->hints)
				FUNC2(FUNC0("nothing added to commit but untracked files "
					 "present (use \"git add\" to track)\n"));
			else
				FUNC2(FUNC0("nothing added to commit but untracked files present\n"));
		} else if (s->is_initial) {
			if (s->hints)
				FUNC2(FUNC0("nothing to commit (create/copy files "
					 "and use \"git add\" to track)\n"));
			else
				FUNC2(FUNC0("nothing to commit\n"));
		} else if (!s->show_untracked_files) {
			if (s->hints)
				FUNC2(FUNC0("nothing to commit (use -u to show untracked files)\n"));
			else
				FUNC2(FUNC0("nothing to commit\n"));
		} else
			FUNC2(FUNC0("nothing to commit, working tree clean\n"));
	}
	if(s->show_stash)
		FUNC10(s);
}