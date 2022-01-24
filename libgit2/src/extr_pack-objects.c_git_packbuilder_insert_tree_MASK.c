#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tree_walk_context {int /*<<< orphan*/  buf; int /*<<< orphan*/  member_1; TYPE_1__* member_0; } ;
typedef  int /*<<< orphan*/  git_tree ;
struct TYPE_4__ {int /*<<< orphan*/  repo; } ;
typedef  TYPE_1__ git_packbuilder ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_TREEWALK_PRE ; 
 int /*<<< orphan*/  cb_tree_walk ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tree_walk_context*) ; 

int FUNC5(git_packbuilder *pb, const git_oid *oid)
{
	int error;
	git_tree *tree = NULL;
	struct tree_walk_context context = { pb, GIT_BUF_INIT };

	if (!(error = FUNC3(&tree, pb->repo, oid)) &&
	    !(error = FUNC1(pb, oid, NULL)))
		error = FUNC4(tree, GIT_TREEWALK_PRE, cb_tree_walk, &context);

	FUNC2(tree);
	FUNC0(&context.buf);
	return error;
}