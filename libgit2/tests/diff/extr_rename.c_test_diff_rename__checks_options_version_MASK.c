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
struct TYPE_9__ {int /*<<< orphan*/  klass; } ;
typedef  TYPE_1__ git_error ;
struct TYPE_10__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ git_diff_options ;
struct TYPE_11__ {int version; } ;
typedef  TYPE_3__ git_diff_find_options ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 char* COPY_RENAME_COMMIT ; 
 TYPE_3__ GIT_DIFF_FIND_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_DIFF_INCLUDE_UNMODIFIED ; 
 TYPE_2__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 char* INITIAL_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char const*) ; 

void FUNC10(void)
{
	const char *old_sha = INITIAL_COMMIT;
	const char *new_sha = COPY_RENAME_COMMIT;
	git_tree *old_tree, *new_tree;
	git_diff *diff;
	git_diff_options diffopts = GIT_DIFF_OPTIONS_INIT;
	git_diff_find_options opts = GIT_DIFF_FIND_OPTIONS_INIT;
	const git_error *err;

	old_tree = FUNC9(g_repo, old_sha);
	new_tree = FUNC9(g_repo, new_sha);
	diffopts.flags |= GIT_DIFF_INCLUDE_UNMODIFIED;
	FUNC2(FUNC5(
		&diff, g_repo, old_tree, new_tree, &diffopts));

	opts.version = 0;
	FUNC1(FUNC3(diff, &opts));
	err = FUNC7();
	FUNC0(GIT_ERROR_INVALID, err->klass);

	FUNC6();
	opts.version = 1024;
	FUNC1(FUNC3(diff, &opts));
	err = FUNC7();
	FUNC0(GIT_ERROR_INVALID, err->klass);

	FUNC4(diff);
	FUNC8(old_tree);
	FUNC8(new_tree);
}