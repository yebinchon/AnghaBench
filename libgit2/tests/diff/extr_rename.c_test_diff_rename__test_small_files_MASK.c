#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_13__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_3__ git_diff_options ;
struct TYPE_14__ {int flags; } ;
typedef  TYPE_4__ git_diff_find_options ;
struct TYPE_12__ {int /*<<< orphan*/  path; } ;
struct TYPE_11__ {int /*<<< orphan*/  path; } ;
struct TYPE_15__ {TYPE_2__ new_file; TYPE_1__ old_file; int /*<<< orphan*/  status; } ;
typedef  TYPE_5__ git_diff_delta ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int GIT_DELTA_RENAMED ; 
 int GIT_DIFF_FIND_FOR_UNTRACKED ; 
 TYPE_4__ GIT_DIFF_FIND_OPTIONS_INIT ; 
 int GIT_DIFF_FIND_RENAMES ; 
 int /*<<< orphan*/  GIT_DIFF_INCLUDE_UNTRACKED ; 
 TYPE_3__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ **,char*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC24(void)
{
	git_index *index;
	git_reference *head_reference;
	git_commit *head_commit;
	git_tree *head_tree;
	git_tree *commit_tree;
	git_signature *signature;
	git_diff *diff;
	git_oid oid;
	const git_diff_delta *delta;
	git_diff_options diff_options = GIT_DIFF_OPTIONS_INIT;
	git_diff_find_options find_options = GIT_DIFF_FIND_OPTIONS_INIT;

	FUNC3(FUNC19(&index, g_repo));

	FUNC2("renames/small.txt", "Hello World!\n");
	FUNC3(FUNC13(index, "small.txt"));

	FUNC3(FUNC18(&head_reference, g_repo));
	FUNC3(FUNC17((git_object**)&head_commit, head_reference, GIT_OBJECT_COMMIT));
	FUNC3(FUNC7(&head_tree, head_commit));
	FUNC3(FUNC15(&oid, index));
	FUNC3(FUNC23(&commit_tree, g_repo, &oid));
	FUNC3(FUNC21(&signature, "Rename", "rename@example.com", 1404157834, 0));
	FUNC3(FUNC5(&oid, g_repo, "HEAD", signature, signature, NULL, "Test commit", commit_tree, 1, (const git_commit**)&head_commit));

	FUNC2("renames/copy.txt", "Hello World!\n");
	FUNC4("renames/small.txt");

	diff_options.flags = GIT_DIFF_INCLUDE_UNTRACKED;
	FUNC3(FUNC12(&diff, g_repo, commit_tree, &diff_options));
	find_options.flags = GIT_DIFF_FIND_RENAMES | GIT_DIFF_FIND_FOR_UNTRACKED;
	FUNC3(FUNC8(diff, &find_options));

	FUNC0(FUNC11(diff), 1);
	delta = FUNC10(diff, 0);
	FUNC0(delta->status, GIT_DELTA_RENAMED);
	FUNC1(delta->old_file.path, "small.txt");
	FUNC1(delta->new_file.path, "copy.txt");

	FUNC9(diff);
	FUNC20(signature);
	FUNC22(commit_tree);
	FUNC22(head_tree);
	FUNC6(head_commit);
	FUNC16(head_reference);
	FUNC14(index);
}