#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_patch ;
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC15 (char const*) ; 

void FUNC16(void)
{
	const char *one_sha = "26a125e";
	const char *another_sha = "735b6a2";
	git_tree *one, *another;
	git_diff *diff;
	git_patch *patch;
	git_buf buf = GIT_BUF_INIT;
	const char *expected = "diff --git a/subdir.txt b/subdir.txt\ndeleted file mode 100644\nindex e8ee89e..0000000\n--- a/subdir.txt\n+++ /dev/null\n@@ -1,2 +0,0 @@\n-Is it a bird?\n-Is it a plane?\n";

	g_repo = FUNC4("status");

	one = FUNC14(g_repo, one_sha);
	another = FUNC14(g_repo, another_sha);

	FUNC3(FUNC8(&diff, g_repo, one, another, NULL));

	FUNC0(1, (int)FUNC7(diff));

	FUNC3(FUNC10(&patch, diff, 0));

	FUNC3(FUNC12(&buf, patch));

	FUNC1(expected, buf.ptr);

	FUNC2(31, FUNC11(patch, 0, 0, 0));
	FUNC2(31, FUNC11(patch, 1, 0, 0));
	FUNC2(31 + 16, FUNC11(patch, 1, 1, 0));
	FUNC2(FUNC15(expected), FUNC11(patch, 1, 1, 1));

	FUNC5(&buf);
	FUNC9(patch);
	FUNC6(diff);
	FUNC13(another);
	FUNC13(one);
}