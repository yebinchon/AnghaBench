#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_patch ;
struct TYPE_11__ {int count; char** strings; } ;
struct TYPE_12__ {TYPE_1__ pathspec; } ;
typedef  TYPE_2__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_13__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_3__ git_buf ;

/* Variables and functions */
 TYPE_3__ GIT_BUF_INIT ; 
 TYPE_2__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ,char const*) ; 

void FUNC19(void)
{
	const char *one_sha = "26a125e"; /* current HEAD */
	git_tree *one;
	git_config *cfg;
	git_diff *diff;
	git_patch *patch;
	git_buf buf = GIT_BUF_INIT;
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	char *onefile = "staged_changes_modified_file";
	const char *expected1 = "diff --git c/staged_changes_modified_file i/staged_changes_modified_file\nindex 70bd944..906ee77 100644\n--- c/staged_changes_modified_file\n+++ i/staged_changes_modified_file\n@@ -1 +1,2 @@\n staged_changes_modified_file\n+staged_changes_modified_file\n";
	const char *expected2 = "diff --git i/staged_changes_modified_file w/staged_changes_modified_file\nindex 906ee77..011c344 100644\n--- i/staged_changes_modified_file\n+++ w/staged_changes_modified_file\n@@ -1,2 +1,3 @@\n staged_changes_modified_file\n staged_changes_modified_file\n+staged_changes_modified_file\n";
	const char *expected3 = "diff --git staged_changes_modified_file staged_changes_modified_file\nindex 906ee77..011c344 100644\n--- staged_changes_modified_file\n+++ staged_changes_modified_file\n@@ -1,2 +1,3 @@\n staged_changes_modified_file\n staged_changes_modified_file\n+staged_changes_modified_file\n";
	const char *expected4 = "diff --git staged_changes_modified_file staged_changes_modified_file\nindex 70bd9443ada0..906ee7711f4f 100644\n--- staged_changes_modified_file\n+++ staged_changes_modified_file\n@@ -1 +1,2 @@\n staged_changes_modified_file\n+staged_changes_modified_file\n";

	g_repo = FUNC3("status");
	FUNC2(FUNC16(&cfg, g_repo));
	one = FUNC18(g_repo, one_sha);
	opts.pathspec.count = 1;
	opts.pathspec.strings = &onefile;


	FUNC2(FUNC8(cfg, "diff.mnemonicprefix", "true"));

	FUNC2(FUNC12(&diff, g_repo, one, NULL, &opts));

	FUNC0(1, (int)FUNC11(diff));
	FUNC2(FUNC14(&patch, diff, 0));
	FUNC2(FUNC15(&buf, patch));
	FUNC1(expected1, buf.ptr);

	FUNC4(&buf);
	FUNC13(patch);
	FUNC9(diff);

	FUNC2(FUNC10(&diff, g_repo, NULL, &opts));

	FUNC0(1, (int)FUNC11(diff));
	FUNC2(FUNC14(&patch, diff, 0));
	FUNC2(FUNC15(&buf, patch));
	FUNC1(expected2, buf.ptr);

	FUNC4(&buf);
	FUNC13(patch);
	FUNC9(diff);


	FUNC2(FUNC8(cfg, "diff.noprefix", "true"));

	FUNC2(FUNC10(&diff, g_repo, NULL, &opts));

	FUNC0(1, (int)FUNC11(diff));
	FUNC2(FUNC14(&patch, diff, 0));
	FUNC2(FUNC15(&buf, patch));
	FUNC1(expected3, buf.ptr);

	FUNC4(&buf);
	FUNC13(patch);
	FUNC9(diff);


	FUNC2(FUNC7(cfg, "core.abbrev", 12));

	FUNC2(FUNC12(&diff, g_repo, one, NULL, &opts));

	FUNC0(1, (int)FUNC11(diff));
	FUNC2(FUNC14(&patch, diff, 0));
	FUNC2(FUNC15(&buf, patch));
	FUNC1(expected4, buf.ptr);

	FUNC4(&buf);
	FUNC13(patch);
	FUNC9(diff);

	FUNC5(&buf);
	FUNC17(one);
	FUNC6(cfg);
}