#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_patch ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_10__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;
struct TYPE_11__ {int /*<<< orphan*/ * diff_drivers; } ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 TYPE_2__* FUNC5 (char*) ; 
 TYPE_2__* g_repo ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (TYPE_2__*,char const*) ; 

void FUNC20(void)
{
	git_config *cfg;
	const char *one_sha = "19dd32dfb1520a64e5bbaae8dce6ef423dfa2f13";
	git_tree *one;
	git_diff *diff;
	git_patch *patch;
	git_buf actual = GIT_BUF_INIT;
	const char *expected0 = "diff --git a/untimely.txt b/untimely.txt\nindex 9a69d96..57fd0cf 100644\n--- a/untimely.txt\n+++ b/untimely.txt\n@@ -22,3 +22,5 @@ Comes through the blood of the vanguards who\n   dreamed--too soon--it had sounded.\r\n \r\n                 -- Rudyard Kipling\r\n+\r\n+Some new stuff\r\n";
	const char *expected1 = "diff --git a/untimely.txt b/untimely.txt\nindex 9a69d96..57fd0cf 100644\nBinary files a/untimely.txt and b/untimely.txt differ\n";
	const char *expected2 = "diff --git a/untimely.txt b/untimely.txt\nindex 9a69d96..57fd0cf 100644\n--- a/untimely.txt\n+++ b/untimely.txt\n@@ -22,3 +22,5 @@ Heaven delivers on earth the Hour that cannot be\n   dreamed--too soon--it had sounded.\r\n \r\n                 -- Rudyard Kipling\r\n+\r\n+Some new stuff\r\n";

	g_repo = FUNC5("renames");

	one = FUNC19(g_repo, one_sha);

	/* no diff */

	FUNC3(FUNC13(&diff, g_repo, one, NULL));
	FUNC0(0, (int)FUNC12(diff));
	FUNC11(diff);

	/* default diff */

	FUNC2("renames/untimely.txt", "\r\nSome new stuff\r\n");

	FUNC3(FUNC13(&diff, g_repo, one, NULL));
	FUNC0(1, (int)FUNC12(diff));

	FUNC3(FUNC15(&patch, diff, 0));
	FUNC3(FUNC16(&actual, patch));
	FUNC1(expected0, actual.ptr);

	FUNC6(&actual);
	FUNC14(patch);
	FUNC11(diff);

	/* attribute diff set to false */

	FUNC4("renames/.gitattributes", "untimely.txt -diff\n");

	FUNC3(FUNC13(&diff, g_repo, one, NULL));
	FUNC0(1, (int)FUNC12(diff));

	FUNC3(FUNC15(&patch, diff, 0));
	FUNC3(FUNC16(&actual, patch));
	FUNC1(expected1, actual.ptr);

	FUNC6(&actual);
	FUNC14(patch);
	FUNC11(diff);

	/* attribute diff set to unconfigured value (should use default) */

	FUNC4("renames/.gitattributes", "untimely.txt diff=kipling0\n");

	FUNC3(FUNC13(&diff, g_repo, one, NULL));
	FUNC0(1, (int)FUNC12(diff));

	FUNC3(FUNC15(&patch, diff, 0));
	FUNC3(FUNC16(&actual, patch));
	FUNC1(expected0, actual.ptr);

	FUNC6(&actual);
	FUNC14(patch);
	FUNC11(diff);

	/* let's define that driver */

	FUNC3(FUNC17(&cfg, g_repo));
	FUNC3(FUNC8(cfg, "diff.kipling0.binary", 1));
	FUNC7(cfg);

	FUNC3(FUNC13(&diff, g_repo, one, NULL));
	FUNC0(1, (int)FUNC12(diff));

	FUNC3(FUNC15(&patch, diff, 0));
	FUNC3(FUNC16(&actual, patch));
	FUNC1(expected1, actual.ptr);

	FUNC6(&actual);
	FUNC14(patch);
	FUNC11(diff);

	/* let's use a real driver with some regular expressions */

	FUNC10(g_repo->diff_drivers);
	g_repo->diff_drivers = NULL;

	FUNC3(FUNC17(&cfg, g_repo));
	FUNC3(FUNC8(cfg, "diff.kipling0.binary", 0));
	FUNC3(FUNC9(cfg, "diff.kipling0.xfuncname", "^H.*$"));
	FUNC7(cfg);

	FUNC3(FUNC13(&diff, g_repo, one, NULL));
	FUNC0(1, (int)FUNC12(diff));

	FUNC3(FUNC15(&patch, diff, 0));
	FUNC3(FUNC16(&actual, patch));
	FUNC1(expected2, actual.ptr);

	FUNC6(&actual);
	FUNC14(patch);
	FUNC11(diff);

	FUNC18(one);
}