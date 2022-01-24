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
typedef  int /*<<< orphan*/  git_tree_entry ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  scalar_t__ git_object_t ;
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int GIT_EINVALIDSPEC ; 
 int /*<<< orphan*/  GIT_ERROR_OBJECT ; 
 scalar_t__ GIT_OBJECT_ANY ; 
 int /*<<< orphan*/  GIT_OBJECT_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(
		git_object **out,
		const git_object *treeish,
		const char *path,
		git_object_t type)
{
	int error = -1;
	git_tree *tree = NULL;
	git_tree_entry *entry = NULL;

	FUNC0(out && treeish && path);

	if ((error = FUNC3((git_object**)&tree, treeish, GIT_OBJECT_TREE)) < 0 ||
		 (error = FUNC4(&entry, tree, path)) < 0)
	{
		goto cleanup;
	}

	if (type != GIT_OBJECT_ANY && FUNC7(entry) != type)
	{
		FUNC1(GIT_ERROR_OBJECT,
				"object at path '%s' is not of the asked-for type %d",
				path, type);
		error = GIT_EINVALIDSPEC;
		goto cleanup;
	}

	error = FUNC6(out, FUNC2(treeish), entry);

cleanup:
	FUNC5(entry);
	FUNC8(tree);
	return error;
}