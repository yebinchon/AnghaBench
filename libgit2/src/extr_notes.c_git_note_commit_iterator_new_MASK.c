#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_note_iterator ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(
	git_note_iterator **it,
	git_commit *notes_commit)
{
	int error;
	git_tree *tree;

	if ((error = FUNC0(&tree, notes_commit)) < 0)
		goto cleanup;

	if ((error = FUNC1(it, tree, NULL)) < 0)
		FUNC2(*it);

cleanup:
	FUNC3(tree);

	return error;
}