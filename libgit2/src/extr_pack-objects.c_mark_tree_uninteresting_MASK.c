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
struct walk_object {int uninteresting; } ;
typedef  int /*<<< orphan*/  git_tree_entry ;
typedef  int /*<<< orphan*/  git_tree ;
struct TYPE_5__ {int /*<<< orphan*/  repo; } ;
typedef  TYPE_1__ git_packbuilder ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
#define  GIT_OBJECT_BLOB 129 
#define  GIT_OBJECT_TREE 128 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int FUNC7 (struct walk_object**,TYPE_1__*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC8(git_packbuilder *pb, const git_oid *id)
{
	struct walk_object *obj;
	git_tree *tree;
	int error;
	size_t i;

	if ((error = FUNC7(&obj, pb, id)) < 0)
		return error;

	if (obj->uninteresting)
		return 0;

	obj->uninteresting = 1;

	if ((error = FUNC5(&tree, pb->repo, id)) < 0)
		return error;

	for (i = 0; i < FUNC3(tree); i++) {
		const git_tree_entry *entry = FUNC0(tree, i);
		const git_oid *entry_id = FUNC1(entry);
		switch (FUNC2(entry)) {
		case GIT_OBJECT_TREE:
			if ((error = FUNC8(pb, entry_id)) < 0)
				goto cleanup;
			break;
		case GIT_OBJECT_BLOB:
			if ((error = FUNC6(pb, entry_id)) < 0)
				goto cleanup;
			break;
		default:
			/* it's a submodule or something unknown, we don't want it */
			;
		}
	}

cleanup:
	FUNC4(tree);
	return error;
}