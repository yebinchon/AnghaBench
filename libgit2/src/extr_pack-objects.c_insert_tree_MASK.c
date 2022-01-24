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
struct walk_object {int seen; scalar_t__ uninteresting; int /*<<< orphan*/  const id; } ;
typedef  int /*<<< orphan*/  git_tree_entry ;
typedef  int /*<<< orphan*/  git_tree ;
struct TYPE_5__ {int /*<<< orphan*/  repo; } ;
typedef  TYPE_1__ git_packbuilder ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
#define  GIT_OBJECT_BLOB 129 
#define  GIT_OBJECT_TREE 128 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*) ; 
 char* FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int FUNC9 (struct walk_object**,TYPE_1__*,int /*<<< orphan*/  const*) ; 

int FUNC10(git_packbuilder *pb, git_tree *tree)
{
	size_t i;
	int error;
	git_tree *subtree;
	struct walk_object *obj;
	const char *name;

	if ((error = FUNC9(&obj, pb, FUNC7(tree))) < 0)
		return error;

	if (obj->seen || obj->uninteresting)
		return 0;

	obj->seen = 1;

	if ((error = FUNC0(pb, &obj->id, NULL)))
		return error;

	for (i = 0; i < FUNC5(tree); i++) {
		const git_tree_entry *entry = FUNC1(tree, i);
		const git_oid *entry_id = FUNC2(entry);
		switch (FUNC4(entry)) {
		case GIT_OBJECT_TREE:
			if ((error = FUNC8(&subtree, pb->repo, entry_id)) < 0)
				return error;

			error = FUNC10(pb, subtree);
			FUNC6(subtree);

			if (error < 0)
				return error;

			break;
		case GIT_OBJECT_BLOB:
			if ((error = FUNC9(&obj, pb, entry_id)) < 0)
				return error;
			if (obj->uninteresting)
				continue;
			name = FUNC3(entry);
			if ((error = FUNC0(pb, entry_id, name)) < 0)
				return error;
			break;
		default:
			/* it's a submodule or something unknown, we don't want it */
			;
		}
	}


	return error;
}