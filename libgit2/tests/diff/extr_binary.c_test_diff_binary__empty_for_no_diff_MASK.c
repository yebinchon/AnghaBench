#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_8__ {int flags; int /*<<< orphan*/  id_abbrev; } ;
typedef  TYPE_1__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_9__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int GIT_DIFF_FORCE_BINARY ; 
 int /*<<< orphan*/  GIT_DIFF_FORMAT_PATCH ; 
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 int GIT_DIFF_SHOW_BINARY ; 
 int /*<<< orphan*/  GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  git_diff_print_callback__to_buf ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  repo ; 

void FUNC12(void)
{
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_oid id;
	git_commit *commit;
	git_tree *tree;
	git_diff *diff;
	git_buf actual = GIT_BUF_INIT;

	opts.flags = GIT_DIFF_SHOW_BINARY | GIT_DIFF_FORCE_BINARY;
	opts.id_abbrev = GIT_OID_HEXSZ;

	repo = FUNC2("renames");

	FUNC1(FUNC10(&id, "19dd32dfb1520a64e5bbaae8dce6ef423dfa2f13"));
	FUNC1(FUNC5(&commit, repo, &id));
	FUNC1(FUNC6(&tree, commit));

	FUNC1(FUNC9(&diff, repo, tree, tree, &opts));
	FUNC1(FUNC8(diff, GIT_DIFF_FORMAT_PATCH, git_diff_print_callback__to_buf, &actual));

	FUNC0("", actual.ptr);

	FUNC3(&actual);
	FUNC7(diff);
	FUNC4(commit);
	FUNC11(tree);
}