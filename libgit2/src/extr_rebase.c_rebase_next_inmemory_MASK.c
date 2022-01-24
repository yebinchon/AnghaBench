#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
struct TYPE_8__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ git_rebase_operation ;
struct TYPE_7__ {int /*<<< orphan*/  merge_options; } ;
struct TYPE_9__ {int /*<<< orphan*/ * index; TYPE_1__ options; int /*<<< orphan*/  repo; int /*<<< orphan*/ * last_commit; int /*<<< orphan*/  current; int /*<<< orphan*/  operations; } ;
typedef  TYPE_3__ git_rebase ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_REBASE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(
	git_rebase_operation **out,
	git_rebase *rebase)
{
	git_commit *current_commit = NULL, *parent_commit = NULL;
	git_tree *current_tree = NULL, *head_tree = NULL, *parent_tree = NULL;
	git_rebase_operation *operation;
	git_index *index = NULL;
	unsigned int parent_count;
	int error;

	*out = NULL;

	operation = FUNC0(rebase->operations, rebase->current);

	if ((error = FUNC2(&current_commit, rebase->repo, &operation->id)) < 0 ||
		(error = FUNC5(&current_tree, current_commit)) < 0)
		goto done;

	if ((parent_count = FUNC4(current_commit)) > 1) {
		FUNC6(GIT_ERROR_REBASE, "cannot rebase a merge commit");
		error = -1;
		goto done;
	} else if (parent_count) {
		if ((error = FUNC3(&parent_commit, current_commit, 0)) < 0 ||
			(error = FUNC5(&parent_tree, parent_commit)) < 0)
			goto done;
	}

	if ((error = FUNC5(&head_tree, rebase->last_commit)) < 0 ||
		(error = FUNC9(&index, rebase->repo, parent_tree, head_tree, current_tree, &rebase->options.merge_options)) < 0)
		goto done;

	if (!rebase->index) {
		rebase->index = index;
		index = NULL;
	} else {
		if ((error = FUNC8(rebase->index, index)) < 0)
			goto done;
	}

	*out = operation;

done:
	FUNC1(current_commit);
	FUNC1(parent_commit);
	FUNC10(current_tree);
	FUNC10(head_tree);
	FUNC10(parent_tree);
	FUNC7(index);

	return error;
}