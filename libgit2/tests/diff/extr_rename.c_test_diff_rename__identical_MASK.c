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
struct TYPE_11__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_diff_options ;
struct TYPE_12__ {int flags; } ;
typedef  TYPE_2__ git_diff_find_options ;
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_13__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_3__ git_buf ;

/* Variables and functions */
 char* COPY_RENAME_COMMIT ; 
 TYPE_3__ GIT_BUF_INIT ; 
 int GIT_DIFF_FIND_COPIES_FROM_UNMODIFIED ; 
 int GIT_DIFF_FIND_EXACT_MATCH_ONLY ; 
 TYPE_2__ GIT_DIFF_FIND_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_DIFF_FORMAT_PATCH ; 
 int /*<<< orphan*/  GIT_DIFF_INCLUDE_UNMODIFIED ; 
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 char* INITIAL_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char const*) ; 

void FUNC9(void)
{
	const char *old_sha = INITIAL_COMMIT;
	const char *new_sha = COPY_RENAME_COMMIT;
	git_tree *old_tree, *new_tree;
    git_diff *diff;
	git_diff_options diff_opts = GIT_DIFF_OPTIONS_INIT;
	git_diff_find_options find_opts = GIT_DIFF_FIND_OPTIONS_INIT;
	git_buf diff_buf = GIT_BUF_INIT;
	const char *expected =
		"diff --git a/serving.txt b/sixserving.txt\n"
		"similarity index 100%\n"
		"rename from serving.txt\n"
		"rename to sixserving.txt\n"
		"diff --git a/sevencities.txt b/songofseven.txt\n"
		"similarity index 100%\n"
		"copy from sevencities.txt\n"
		"copy to songofseven.txt\n";

	old_tree = FUNC8(g_repo, old_sha);
	new_tree = FUNC8(g_repo, new_sha);

	diff_opts.flags |= GIT_DIFF_INCLUDE_UNMODIFIED;
	find_opts.flags = GIT_DIFF_FIND_COPIES_FROM_UNMODIFIED |
		GIT_DIFF_FIND_EXACT_MATCH_ONLY;

	FUNC1(FUNC6(&diff,
		g_repo, old_tree, new_tree, &diff_opts));
	FUNC1(FUNC3(diff, &find_opts));

	FUNC1(FUNC5(&diff_buf, diff, GIT_DIFF_FORMAT_PATCH));

	FUNC0(expected, diff_buf.ptr);

	FUNC2(&diff_buf);
	FUNC4(diff);
	FUNC7(old_tree);
	FUNC7(new_tree);
}