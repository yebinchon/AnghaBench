#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_patch ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_9__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_10__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_DIFF_PATIENCE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC19(void)
{
	git_index *index;
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff = NULL;
	git_patch *patch = NULL;
	git_buf buf = GIT_BUF_INIT;
	const char *expected_normal = "diff --git a/test.txt b/test.txt\nindex 34a5acc..d52725f 100644\n--- a/test.txt\n+++ b/test.txt\n@@ -1,10 +1,7 @@\n When I wrote this\n I did not know\n-how to create\n-a patience diff\n I did not know\n how to create\n+a patience diff\n another problem\n-I did not know\n-how to create\n a minimal diff\n";
	const char *expected_patience = "diff --git a/test.txt b/test.txt\nindex 34a5acc..d52725f 100644\n--- a/test.txt\n+++ b/test.txt\n@@ -1,10 +1,7 @@\n When I wrote this\n I did not know\n+I did not know\n how to create\n a patience diff\n-I did not know\n-how to create\n another problem\n-I did not know\n-how to create\n a minimal diff\n";

	g_repo = FUNC5("empty_standard_repo");
	FUNC7(g_repo, "core.autocrlf", true);
	FUNC3(FUNC18(&index, g_repo));

	FUNC2(
		"empty_standard_repo/test.txt",
		"When I wrote this\nI did not know\nhow to create\na patience diff\nI did not know\nhow to create\nanother problem\nI did not know\nhow to create\na minimal diff\n");
	FUNC3(FUNC13(index, "test.txt"));
	FUNC6(NULL, g_repo, NULL, 1372350000, "Base");
	FUNC14(index);

	FUNC4(
		"empty_standard_repo/test.txt",
		"When I wrote this\nI did not know\nI did not know\nhow to create\na patience diff\nanother problem\na minimal diff\n");

	FUNC3(FUNC11(&diff, g_repo, NULL, &opts));
	FUNC0(1, FUNC12(diff));
	FUNC3(FUNC16(&patch, diff, 0));
	FUNC3(FUNC17(&buf, patch));

	FUNC1(expected_normal, buf.ptr);
	FUNC8(&buf);
	FUNC15(patch);
	FUNC10(diff);

	opts.flags |= GIT_DIFF_PATIENCE;

	FUNC3(FUNC11(&diff, g_repo, NULL, &opts));
	FUNC0(1, FUNC12(diff));
	FUNC3(FUNC16(&patch, diff, 0));
	FUNC3(FUNC17(&buf, patch));

	FUNC1(expected_patience, buf.ptr);
	FUNC8(&buf);

	FUNC9(&buf);
	FUNC15(patch);
	FUNC10(diff);
}