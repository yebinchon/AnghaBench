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
struct TYPE_11__ {int flags; } ;
typedef  TYPE_2__ git_diff_find_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  git_config ;
typedef  int /*<<< orphan*/  exp ;
struct TYPE_12__ {int /*<<< orphan*/ * file_status; int /*<<< orphan*/  files; } ;
typedef  TYPE_3__ diff_expects ;

/* Variables and functions */
 size_t GIT_DELTA_ADDED ; 
 size_t GIT_DELTA_DELETED ; 
 size_t GIT_DELTA_MODIFIED ; 
 size_t GIT_DELTA_RENAMED ; 
 int GIT_DIFF_FIND_BY_CONFIG ; 
 int GIT_DIFF_FIND_DONT_IGNORE_WHITESPACE ; 
 TYPE_2__ GIT_DIFF_FIND_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_DIFF_INCLUDE_UNMODIFIED ; 
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 char* RENAME_MODIFICATION_COMMIT ; 
 char* REWRITE_COPY_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  diff_binary_cb ; 
 int /*<<< orphan*/  diff_file_cb ; 
 int /*<<< orphan*/  diff_hunk_cb ; 
 int /*<<< orphan*/  diff_line_cb ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,char const*) ; 

void FUNC12(void)
{
	const char *sha1 = REWRITE_COPY_COMMIT;
	const char *sha2 = RENAME_MODIFICATION_COMMIT;

	git_tree *tree1, *tree2;
	git_config *cfg;
	git_diff *diff;
	git_diff_options diffopts = GIT_DIFF_OPTIONS_INIT;
	git_diff_find_options opts = GIT_DIFF_FIND_OPTIONS_INIT;
	diff_expects exp;

	tree1 = FUNC11(g_repo, sha1);
	tree2 = FUNC11(g_repo, sha2);

	diffopts.flags |= GIT_DIFF_INCLUDE_UNMODIFIED;
	opts.flags = GIT_DIFF_FIND_BY_CONFIG;

	FUNC1(FUNC8(&cfg, g_repo));
	FUNC1(FUNC3(cfg, "diff.renames", "copies"));
	FUNC2(cfg);

	/* Don't ignore whitespace; this should find a change in sixserving.txt */
	opts.flags |= 0 | GIT_DIFF_FIND_DONT_IGNORE_WHITESPACE;
	FUNC1(FUNC7(
				&diff, g_repo, tree1, tree2, &diffopts));
	FUNC10(&exp, 0, sizeof(exp));
	FUNC1(FUNC4(diff, &opts));
	FUNC1(FUNC5(diff,
				diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
	FUNC0(5, exp.files);
	FUNC0(2, exp.file_status[GIT_DELTA_MODIFIED]);
	FUNC0(1, exp.file_status[GIT_DELTA_RENAMED]);
	FUNC0(1, exp.file_status[GIT_DELTA_DELETED]);
	FUNC0(1, exp.file_status[GIT_DELTA_ADDED]);
	FUNC6(diff);

	/* Cleanup */
	FUNC9(tree1);
	FUNC9(tree2);
}