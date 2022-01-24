#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_submodule ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_5__ {int count; char** strings; } ;
struct TYPE_6__ {char* old_prefix; char* new_prefix; TYPE_1__ pathspec; int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DIFF_INCLUDE_UNTRACKED ; 
 TYPE_2__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_SUBMODULE_IGNORE_ALL ; 
 int /*<<< orphan*/  GIT_SUBMODULE_IGNORE_DIRTY ; 
 int /*<<< orphan*/  GIT_SUBMODULE_IGNORE_NONE ; 
 int /*<<< orphan*/  GIT_SUBMODULE_IGNORE_UNTRACKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 () ; 

void FUNC19(void)
{
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff = NULL;
	git_submodule *sm;
	char *smpath = "sm_changed_head";
	git_repository *smrepo;
	git_index *smindex;
	static const char *expected_baseline[] = {
		"diff --git a/sm_changed_head b/sm_changed_head\nindex 4800958..3d9386c 160000\n--- a/sm_changed_head\n+++ b/sm_changed_head\n@@ -1 +1 @@\n-Subproject commit 480095882d281ed676fe5b863569520e54a7d5c0\n+Subproject commit 3d9386c507f6b093471a3e324085657a3c2b4247\n", /* sm_changed_head */
		"<END>"
	};
	static const char *expected_unchanged[] = { "<END>" };
	static const char *expected_dirty[] = {
		"diff --git a/sm_changed_head b/sm_changed_head\nindex 3d9386c..3d9386c 160000\n--- a/sm_changed_head\n+++ b/sm_changed_head\n@@ -1 +1 @@\n-Subproject commit 3d9386c507f6b093471a3e324085657a3c2b4247\n+Subproject commit 3d9386c507f6b093471a3e324085657a3c2b4247-dirty\n",
		"<END>"
	};
	static const char *expected_moved[] = {
		"diff --git a/sm_changed_head b/sm_changed_head\nindex 3d9386c..7002348 160000\n--- a/sm_changed_head\n+++ b/sm_changed_head\n@@ -1 +1 @@\n-Subproject commit 3d9386c507f6b093471a3e324085657a3c2b4247\n+Subproject commit 700234833f6ccc20d744b238612646be071acaae\n",
		"<END>"
	};
	static const char *expected_moved_dirty[] = {
		"diff --git a/sm_changed_head b/sm_changed_head\nindex 3d9386c..7002348 160000\n--- a/sm_changed_head\n+++ b/sm_changed_head\n@@ -1 +1 @@\n-Subproject commit 3d9386c507f6b093471a3e324085657a3c2b4247\n+Subproject commit 700234833f6ccc20d744b238612646be071acaae-dirty\n",
		"<END>"
	};

	g_repo = FUNC18();

	opts.flags = GIT_DIFF_INCLUDE_UNTRACKED;
	opts.old_prefix = "a"; opts.new_prefix = "b";
	opts.pathspec.count = 1;
	opts.pathspec.strings = &smpath;

	/* baseline */
	FUNC3(FUNC6(&diff, g_repo, NULL, &opts));
	FUNC0(diff, expected_baseline);
	FUNC5(diff);

	/* update index with new HEAD */
	FUNC3(FUNC13(&sm, g_repo, smpath));
	FUNC3(FUNC11(sm, 1));

	FUNC3(FUNC6(&diff, g_repo, NULL, &opts));
	FUNC0(diff, expected_unchanged);
	FUNC5(diff);

	/* create untracked file in submodule working directory */
	FUNC2("submod2/sm_changed_head/new_around_here", "hello");
	FUNC16(g_repo, FUNC14(sm), GIT_SUBMODULE_IGNORE_NONE);

	FUNC3(FUNC6(&diff, g_repo, NULL, &opts));
	FUNC0(diff, expected_dirty);
	FUNC5(diff);

	FUNC16(g_repo, FUNC14(sm), GIT_SUBMODULE_IGNORE_UNTRACKED);

	FUNC3(FUNC6(&diff, g_repo, NULL, &opts));
	FUNC0(diff, expected_unchanged);
	FUNC5(diff);

	/* modify tracked file in submodule working directory */
	FUNC1(
		"submod2/sm_changed_head/file_to_modify", "\nmore stuff\n");

	FUNC3(FUNC6(&diff, g_repo, NULL, &opts));
	FUNC0(diff, expected_dirty);
	FUNC5(diff);

	FUNC12(sm);

	FUNC3(FUNC13(&sm, g_repo, smpath));

	FUNC3(FUNC6(&diff, g_repo, NULL, &opts));
	FUNC0(diff, expected_dirty);
	FUNC5(diff);

	FUNC16(g_repo, FUNC14(sm), GIT_SUBMODULE_IGNORE_DIRTY);

	FUNC3(FUNC6(&diff, g_repo, NULL, &opts));
	FUNC0(diff, expected_unchanged);
	FUNC5(diff);

	/* add file to index in submodule */
	FUNC3(FUNC15(&smrepo, sm));
	FUNC3(FUNC10(&smindex, smrepo));
	FUNC3(FUNC7(smindex, "file_to_modify"));

	FUNC16(g_repo, FUNC14(sm), GIT_SUBMODULE_IGNORE_UNTRACKED);

	FUNC3(FUNC6(&diff, g_repo, NULL, &opts));
	FUNC0(diff, expected_dirty);
	FUNC5(diff);

	FUNC16(g_repo, FUNC14(sm), GIT_SUBMODULE_IGNORE_DIRTY);

	FUNC3(FUNC6(&diff, g_repo, NULL, &opts));
	FUNC0(diff, expected_unchanged);
	FUNC5(diff);

	/* commit changed index of submodule */
	FUNC4(NULL, smrepo, NULL, 1372350000, "Move it");

	FUNC16(g_repo, FUNC14(sm), GIT_SUBMODULE_IGNORE_DIRTY);

	FUNC3(FUNC6(&diff, g_repo, NULL, &opts));
	FUNC0(diff, expected_moved);
	FUNC5(diff);

	FUNC16(g_repo, FUNC14(sm), GIT_SUBMODULE_IGNORE_ALL);

	FUNC3(FUNC6(&diff, g_repo, NULL, &opts));
	FUNC0(diff, expected_unchanged);
	FUNC5(diff);

	FUNC16(g_repo, FUNC14(sm), GIT_SUBMODULE_IGNORE_NONE);

	FUNC3(FUNC6(&diff, g_repo, NULL, &opts));
	FUNC0(diff, expected_moved_dirty);
	FUNC5(diff);

	FUNC17("submod2/sm_changed_head/new_around_here");

	FUNC12(sm);

	FUNC3(FUNC6(&diff, g_repo, NULL, &opts));
	FUNC0(diff, expected_moved);
	FUNC5(diff);

	FUNC8(smindex);
	FUNC9(smrepo);
}