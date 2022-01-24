#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
struct TYPE_10__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_diff_options ;
struct TYPE_11__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ git_diff_find_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  git_config ;
typedef  int /*<<< orphan*/  exp ;
struct TYPE_12__ {int /*<<< orphan*/ * file_status; int /*<<< orphan*/  files; } ;
typedef  TYPE_3__ diff_expects ;

/* Variables and functions */
 char* COPY_RENAME_COMMIT ; 
 size_t GIT_DELTA_ADDED ; 
 size_t GIT_DELTA_COPIED ; 
 size_t GIT_DELTA_DELETED ; 
 size_t GIT_DELTA_MODIFIED ; 
 size_t GIT_DELTA_RENAMED ; 
 size_t GIT_DELTA_UNMODIFIED ; 
 int /*<<< orphan*/  GIT_DIFF_FIND_BY_CONFIG ; 
 TYPE_2__ GIT_DIFF_FIND_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_DIFF_INCLUDE_UNMODIFIED ; 
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 char* INITIAL_COMMIT ; 
 char* REWRITE_COPY_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  diff_binary_cb ; 
 int /*<<< orphan*/  diff_file_cb ; 
 int /*<<< orphan*/  diff_hunk_cb ; 
 int /*<<< orphan*/  diff_line_cb ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,char const*) ; 

void FUNC13(void)
{
	const char *sha0 = INITIAL_COMMIT;
	const char *sha1 = COPY_RENAME_COMMIT;
	const char *sha2 = REWRITE_COPY_COMMIT;

	git_tree *tree0, *tree1, *tree2;
	git_config *cfg;
	git_diff *diff;
	git_diff_options diffopts = GIT_DIFF_OPTIONS_INIT;
	git_diff_find_options opts = GIT_DIFF_FIND_OPTIONS_INIT;
	diff_expects exp;

	opts.flags = GIT_DIFF_FIND_BY_CONFIG;
	tree0 = FUNC12(g_repo, sha0);
	tree1 = FUNC12(g_repo, sha1);
	tree2 = FUNC12(g_repo, sha2);

	diffopts.flags |= GIT_DIFF_INCLUDE_UNMODIFIED;
	FUNC1(FUNC9(&cfg, g_repo));

	/* diff.renames = false; no rename detection should happen */
	FUNC1(FUNC3(cfg, "diff.renames", false));
	FUNC1(FUNC8(
				&diff, g_repo, tree0, tree1, &diffopts));
	FUNC11(&exp, 0, sizeof(exp));
	FUNC1(FUNC5(diff, &opts));
	FUNC1(FUNC6(diff,
				diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
	FUNC0(4, exp.files);
	FUNC0(1, exp.file_status[GIT_DELTA_UNMODIFIED]);
	FUNC0(2, exp.file_status[GIT_DELTA_ADDED]);
	FUNC0(1, exp.file_status[GIT_DELTA_DELETED]);
	FUNC7(diff);

	/* diff.renames = true; should act like -M */
	FUNC1(FUNC3(cfg, "diff.renames", true));
	FUNC1(FUNC8(
				&diff, g_repo, tree0, tree1, &diffopts));
	FUNC11(&exp, 0, sizeof(exp));
	FUNC1(FUNC5(diff, &opts));
	FUNC1(FUNC6(diff,
				diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
	FUNC0(3, exp.files);
	FUNC0(1, exp.file_status[GIT_DELTA_UNMODIFIED]);
	FUNC0(1, exp.file_status[GIT_DELTA_ADDED]);
	FUNC0(1, exp.file_status[GIT_DELTA_RENAMED]);
	FUNC7(diff);

	/* diff.renames = copies; should act like -M -C */
	FUNC1(FUNC4(cfg, "diff.renames", "copies"));
	FUNC1(FUNC8(
				&diff, g_repo, tree1, tree2, &diffopts));
	FUNC11(&exp, 0, sizeof(exp));
	FUNC1(FUNC5(diff, &opts));
	FUNC1(FUNC6(diff,
				diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
	FUNC0(4, exp.files);
	FUNC0(1, exp.file_status[GIT_DELTA_UNMODIFIED]);
	FUNC0(2, exp.file_status[GIT_DELTA_MODIFIED]);
	FUNC0(1, exp.file_status[GIT_DELTA_COPIED]);
	FUNC7(diff);

	/* NULL find options is the same as GIT_DIFF_FIND_BY_CONFIG */
	FUNC1(FUNC8(
				&diff, g_repo, tree1, tree2, &diffopts));
	FUNC11(&exp, 0, sizeof(exp));
	FUNC1(FUNC5(diff, NULL));
	FUNC1(FUNC6(diff,
				diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
	FUNC0(4, exp.files);
	FUNC0(1, exp.file_status[GIT_DELTA_UNMODIFIED]);
	FUNC0(2, exp.file_status[GIT_DELTA_MODIFIED]);
	FUNC0(1, exp.file_status[GIT_DELTA_COPIED]);
	FUNC7(diff);

	/* Cleanup */
	FUNC10(tree0);
	FUNC10(tree1);
	FUNC10(tree2);
	FUNC2(cfg);
}