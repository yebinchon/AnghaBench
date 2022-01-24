#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
struct TYPE_9__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_11__ {char* path; int mode; int /*<<< orphan*/  id; TYPE_1__ member_0; } ;
typedef  TYPE_3__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_10__ {int /*<<< orphan*/  path; } ;
struct TYPE_12__ {int /*<<< orphan*/  status; int /*<<< orphan*/  nfiles; TYPE_2__ old_file; } ;
typedef  TYPE_4__ git_diff_delta ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 int GIT_DELTA_CONFLICTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,char const*) ; 

void FUNC16(void) {
	const char *a_commit = "26a125ee1bf"; /* the current HEAD */
	git_index_entry ancestor = {0}, ours = {0}, theirs = {0};
	git_tree *a;
	git_index *index;
	git_diff *diff1, *diff2;
	const git_diff_delta *delta;

	g_repo = FUNC3("status");
	a = FUNC15(g_repo, a_commit);

	FUNC2(FUNC13(&index, g_repo));

	ancestor.path = ours.path = theirs.path = "_file";
	ancestor.mode = ours.mode = theirs.mode = 0100644;
	FUNC12(&ancestor.id, "d427e0b2e138501a3d15cc376077a3631e15bd46");
	FUNC12(&ours.id, "ee3fa1b8c00aff7fe02065fdb50864bb0d932ccf");
	FUNC12(&theirs.id, "2bd0a343aeef7a2cf0d158478966a6e587ff3863");
	FUNC2(FUNC10(index, &ancestor, &ours, &theirs));

	FUNC2(FUNC9(&diff1, g_repo, a, index, NULL));
	FUNC2(FUNC6(&diff2, g_repo, index, NULL));
	FUNC2(FUNC7(diff1, diff2));

	FUNC0(FUNC8(diff1), 12);
	delta = FUNC5(diff1, 0);
	FUNC1(delta->old_file.path, "_file");
	FUNC0(delta->nfiles, 1);
	FUNC0(delta->status, GIT_DELTA_CONFLICTED);

	FUNC4(diff2);
	FUNC4(diff1);
	FUNC11(index);
	FUNC14(a);
}