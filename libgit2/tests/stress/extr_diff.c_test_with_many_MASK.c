#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_diff_options ;
struct TYPE_7__ {void* flags; } ;
typedef  TYPE_1__ git_diff_find_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  exp ;
struct TYPE_8__ {int /*<<< orphan*/  files; int /*<<< orphan*/ * file_status; } ;
typedef  TYPE_2__ diff_expects ;

/* Variables and functions */
 size_t GIT_DELTA_ADDED ; 
 size_t GIT_DELTA_DELETED ; 
 size_t GIT_DELTA_RENAMED ; 
 void* GIT_DIFF_FIND_ALL ; 
 TYPE_1__ GIT_DIFF_FIND_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  diff_file_cb ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 

__attribute__((used)) static void FUNC17(int expected_new)
{
	git_index *index;
	git_tree *tree, *new_tree;
	git_diff *diff = NULL;
	diff_expects exp;
	git_diff_options diffopts = GIT_DIFF_OPTIONS_INIT;
	git_diff_find_options opts = GIT_DIFF_FIND_OPTIONS_INIT;

	FUNC1(FUNC12(&index, g_repo));
	FUNC1(
		FUNC13((git_object **)&tree, g_repo, "HEAD^{tree}"));

	FUNC1(FUNC16("renames/ikeepsix.txt", "renames/ikeepsix2.txt"));
	FUNC1(FUNC10(index, "ikeepsix.txt"));
	FUNC1(FUNC8(index, "ikeepsix2.txt"));
	FUNC1(FUNC11(index));

	FUNC1(FUNC6(&diff, g_repo, tree, index, &diffopts));

	FUNC15(&exp, 0, sizeof(exp));
	FUNC1(FUNC4(
		diff, diff_file_cb, NULL, NULL, NULL, &exp));
	FUNC0(1, exp.file_status[GIT_DELTA_DELETED]);
	FUNC0(expected_new + 1, exp.file_status[GIT_DELTA_ADDED]);
	FUNC0(expected_new + 2, exp.files);

	opts.flags = GIT_DIFF_FIND_ALL;
	FUNC1(FUNC3(diff, &opts));

	FUNC15(&exp, 0, sizeof(exp));
	FUNC1(FUNC4(
		diff, diff_file_cb, NULL, NULL, NULL, &exp));
	FUNC0(1, exp.file_status[GIT_DELTA_RENAMED]);
	FUNC0(expected_new, exp.file_status[GIT_DELTA_ADDED]);
	FUNC0(expected_new + 1, exp.files);

	FUNC5(diff);

	FUNC2(NULL, g_repo, NULL, 1372350000, "yoyoyo");
	FUNC1(FUNC13(
		(git_object **)&new_tree, g_repo, "HEAD^{tree}"));

	FUNC1(FUNC7(
		&diff, g_repo, tree, new_tree, &diffopts));

	FUNC15(&exp, 0, sizeof(exp));
	FUNC1(FUNC4(
		diff, diff_file_cb, NULL, NULL, NULL, &exp));
	FUNC0(1, exp.file_status[GIT_DELTA_DELETED]);
	FUNC0(expected_new + 1, exp.file_status[GIT_DELTA_ADDED]);
	FUNC0(expected_new + 2, exp.files);

	opts.flags = GIT_DIFF_FIND_ALL;
	FUNC1(FUNC3(diff, &opts));

	FUNC15(&exp, 0, sizeof(exp));
	FUNC1(FUNC4(
		diff, diff_file_cb, NULL, NULL, NULL, &exp));
	FUNC0(1, exp.file_status[GIT_DELTA_RENAMED]);
	FUNC0(expected_new, exp.file_status[GIT_DELTA_ADDED]);
	FUNC0(expected_new + 1, exp.files);

	FUNC5(diff);

	FUNC14(new_tree);
	FUNC14(tree);
	FUNC9(index);
}