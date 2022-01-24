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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

int FUNC3(git_tree **tree, git_repository *repo)
{
	git_reference *head;
	git_object *obj;
	int error;

	if ((error = FUNC2(&head, repo)) < 0)
		return error;

	if ((error = FUNC1(&obj, head, GIT_OBJECT_TREE)) < 0)
		goto cleanup;

	*tree = (git_tree *)obj;

cleanup:
	FUNC0(head);
	return error;
}