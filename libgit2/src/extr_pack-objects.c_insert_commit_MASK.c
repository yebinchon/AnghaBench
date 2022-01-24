#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct walk_object {int seen; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  git_tree ;
struct TYPE_5__ {int /*<<< orphan*/  repo; } ;
typedef  TYPE_1__ git_packbuilder ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int FUNC7(git_packbuilder *pb, struct walk_object *obj)
{
	int error;
	git_commit *commit = NULL;
	git_tree *tree = NULL;

	obj->seen = 1;

	if ((error = FUNC3(pb, &obj->id, NULL)) < 0)
		return error;

	if ((error = FUNC1(&commit, pb->repo, &obj->id)) < 0)
		return error;

	if ((error = FUNC5(&tree, pb->repo, FUNC2(commit))) < 0)
		goto cleanup;

	if ((error = FUNC6(pb, tree)) < 0)
		goto cleanup;

cleanup:
	FUNC0(commit);
	FUNC4(tree);
	return error;
}