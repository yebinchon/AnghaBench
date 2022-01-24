#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
struct TYPE_9__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_10__ {char* path; int /*<<< orphan*/  id; int /*<<< orphan*/  mode; TYPE_1__ member_0; } ;
typedef  TYPE_2__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_11__ {int context_lines; int interhunk_lines; unsigned long flags; } ;
typedef  TYPE_3__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  diff_expects ;

/* Variables and functions */
 TYPE_3__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  diff_binary_cb ; 
 int /*<<< orphan*/  diff_file_cb ; 
 int /*<<< orphan*/  diff_hunk_cb ; 
 int /*<<< orphan*/  diff_line_cb ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC12(diff_expects *exp, unsigned long flags)
{
	const char *a_commit = "26a125ee1bf"; /* the current HEAD */
	git_tree *a = FUNC11(g_repo, a_commit);
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_index_entry ancestor = {0}, ours = {0}, theirs = {0};
	git_diff *diff = NULL;
	git_index *index;

	FUNC0(a);

	opts.context_lines = 1;
	opts.interhunk_lines = 1;
	opts.flags |= flags;

	FUNC10(exp, 0, sizeof(diff_expects));

	FUNC1(FUNC8(&index, g_repo));

	ancestor.path = ours.path = theirs.path = "staged_changes";
	ancestor.mode = ours.mode = theirs.mode = GIT_FILEMODE_BLOB;

	FUNC7(&ancestor.id, "d427e0b2e138501a3d15cc376077a3631e15bd46");
	FUNC7(&ours.id, "ee3fa1b8c00aff7fe02065fdb50864bb0d932ccf");
	FUNC7(&theirs.id, "2bd0a343aeef7a2cf0d158478966a6e587ff3863");

	FUNC1(FUNC5(index, &ancestor, &ours, &theirs));
	FUNC1(FUNC4(&diff, g_repo, a, index, &opts));

	FUNC1(FUNC2(
		diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, exp));

	FUNC3(diff);
	FUNC9(a);
	FUNC6(index);
}