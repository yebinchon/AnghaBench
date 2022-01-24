#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
struct TYPE_6__ {int count; char** strings; } ;
struct TYPE_7__ {int flags; char* old_prefix; char* new_prefix; TYPE_1__ pathspec; } ;
typedef  TYPE_2__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 int GIT_DIFF_DISABLE_PATHSPEC_MATCH ; 
 int GIT_DIFF_INCLUDE_UNTRACKED ; 
 TYPE_2__ GIT_DIFF_OPTIONS_INIT ; 
 int GIT_DIFF_RECURSE_UNTRACKED_DIRS ; 
 int GIT_DIFF_SHOW_UNTRACKED_CONTENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 

void FUNC11(void)
{
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff = NULL, *diff2 = NULL;
	char *smpath = "testrepo";
	static const char *expected_none[] = {
		"<END>"
	};
	static const char *expected_dirty[] = {
		"diff --git a/testrepo b/testrepo\nindex a65fedf..a65fedf 160000\n--- a/testrepo\n+++ b/testrepo\n@@ -1 +1 @@\n-Subproject commit a65fedf39aefe402d3bb6e24df4d4f5fe4547750\n+Subproject commit a65fedf39aefe402d3bb6e24df4d4f5fe4547750-dirty\n", /* testrepo.git */
		"<END>"
	};

	g_repo = FUNC10();

	opts.flags = GIT_DIFF_INCLUDE_UNTRACKED |
		GIT_DIFF_SHOW_UNTRACKED_CONTENT |
		GIT_DIFF_RECURSE_UNTRACKED_DIRS |
		GIT_DIFF_DISABLE_PATHSPEC_MATCH;
	opts.old_prefix = "a"; opts.new_prefix = "b";
	opts.pathspec.count = 1;
	opts.pathspec.strings = &smpath;

	FUNC2(FUNC5(&diff, g_repo, NULL, &opts));
	FUNC0(diff, expected_none);
	FUNC4(diff);

	FUNC3("submodules/testrepo/README", "heyheyhey");
	FUNC1("submodules/testrepo/all_new.txt", "never seen before");

	FUNC2(FUNC5(&diff, g_repo, NULL, &opts));
	FUNC0(diff, expected_dirty);

	{
		git_tree *head;

		FUNC2(FUNC8(&head, g_repo));
		FUNC2(FUNC7(&diff2, g_repo, head, NULL, &opts));
		FUNC2(FUNC6(diff, diff2));
		FUNC4(diff2);
		FUNC9(head);

		FUNC0(diff, expected_dirty);
	}

	FUNC4(diff);

	FUNC2(FUNC5(&diff, g_repo, NULL, &opts));
	FUNC0(diff, expected_dirty);
	FUNC4(diff);
}