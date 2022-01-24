#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_18__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_diff_options ;
struct TYPE_19__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ git_diff_find_options ;
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_20__ {int size; scalar_t__ ptr; } ;
typedef  TYPE_3__ git_buf ;
typedef  int /*<<< orphan*/  exp ;
struct TYPE_21__ {int /*<<< orphan*/ * file_status; int /*<<< orphan*/  files; } ;
typedef  TYPE_4__ diff_expects ;

/* Variables and functions */
 TYPE_3__ GIT_BUF_INIT ; 
 size_t GIT_DELTA_ADDED ; 
 size_t GIT_DELTA_COPIED ; 
 size_t GIT_DELTA_UNMODIFIED ; 
 int /*<<< orphan*/  GIT_DIFF_FIND_ALL ; 
 TYPE_2__ GIT_DIFF_FIND_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_DIFF_INCLUDE_UNMODIFIED ; 
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  diff_binary_cb ; 
 int /*<<< orphan*/  diff_file_cb ; 
 int /*<<< orphan*/  diff_hunk_cb ; 
 int /*<<< orphan*/  diff_line_cb ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 

void FUNC19(void)
{
	git_buf c1 = GIT_BUF_INIT, c2 = GIT_BUF_INIT;
	git_index *index;
	git_tree *tree;
	git_diff *diff;
	git_diff_options diffopts = GIT_DIFF_OPTIONS_INIT;
	git_diff_find_options opts = GIT_DIFF_FIND_OPTIONS_INIT;
	diff_expects exp;

	/* put the first 2/3 of file into one new place
	 * and the second 2/3 of file into another new place
	 */
	FUNC1(FUNC10(&c1, "renames/songof7cities.txt"));
	FUNC1(FUNC4(&c2, c1.ptr, c1.size));
	FUNC5(&c1, c1.size * 2 / 3);
	FUNC2(&c2, ((char *)c2.ptr) + (c2.size / 3));
	FUNC1(FUNC11(&c1, "renames/song_a.txt", 0, 0));
	FUNC1(FUNC11(&c2, "renames/song_b.txt", 0, 0));

	FUNC1(
		FUNC16((git_object **)&tree, g_repo, "HEAD^{tree}"));

	FUNC1(FUNC15(&index, g_repo));
	FUNC1(FUNC14(index, tree));
	FUNC1(FUNC12(index, "song_a.txt"));
	FUNC1(FUNC12(index, "song_b.txt"));

	diffopts.flags = GIT_DIFF_INCLUDE_UNMODIFIED;

	FUNC1(FUNC9(&diff, g_repo, tree, index, &diffopts));

	FUNC18(&exp, 0, sizeof(exp));
	FUNC1(FUNC7(
		diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
	FUNC0(6, exp.files);
	FUNC0(2, exp.file_status[GIT_DELTA_ADDED]);
	FUNC0(4, exp.file_status[GIT_DELTA_UNMODIFIED]);

	opts.flags = GIT_DIFF_FIND_ALL;
	FUNC1(FUNC6(diff, &opts));

	FUNC18(&exp, 0, sizeof(exp));
	FUNC1(FUNC7(
		diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
	FUNC0(6, exp.files);
	FUNC0(2, exp.file_status[GIT_DELTA_COPIED]);
	FUNC0(4, exp.file_status[GIT_DELTA_UNMODIFIED]);

	FUNC8(diff);
	FUNC17(tree);
	FUNC13(index);

	FUNC3(&c1);
	FUNC3(&c2);
}