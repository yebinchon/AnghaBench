#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_6__ {int /*<<< orphan*/  status; } ;
typedef  TYPE_1__ git_diff_delta ;
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_7__ {int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_2__ git_checkout_options ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CHECKOUT_FORCE ; 
 TYPE_2__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_DELTA_DELETED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  repo ; 

void FUNC13(void)
{
#ifdef GIT_WIN32
	git_index *index;
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	git_diff *diff;
	const git_diff_delta *delta;
	git_tree *tree;
	size_t num_deltas, i;

	opts.checkout_strategy = GIT_CHECKOUT_FORCE;

	cl_git_pass(git_repository_index(&index, repo));
	cl_git_fail(git_checkout_index(repo, index, &opts));

	cl_git_pass(git_repository_head_tree(&tree, repo));
	cl_git_pass(git_diff_index_to_workdir(&diff, repo, index, NULL));

	num_deltas = git_diff_num_deltas(diff);

	cl_assert(num_deltas > 0);

	for (i = 0; i < num_deltas; i++) {
		delta = git_diff_get_delta(diff, i);
		cl_assert_equal_i(GIT_DELTA_DELETED, delta->status);
	}

	git_diff_free(diff);
	git_tree_free(tree);
	git_index_free(index);
#endif
}