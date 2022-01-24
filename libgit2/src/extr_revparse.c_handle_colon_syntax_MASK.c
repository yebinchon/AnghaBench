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
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int GIT_EINVALIDSPEC ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_OBJECT_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(
	git_object **out,
	git_object *obj,
	const char *path)
{
	git_object *tree;
	int error = -1;
	git_tree_entry *entry = NULL;

	if ((error = FUNC2(&tree, obj, GIT_OBJECT_TREE)) < 0)
		return error == GIT_ENOTFOUND ? GIT_EINVALIDSPEC : error;

	if (*path == '\0') {
		*out = tree;
		return 0;
	}

	/*
	 * TODO: Handle the relative path syntax
	 * (:./relative/path and :../relative/path)
	 */
	if ((error = FUNC3(&entry, (git_tree *)tree, path)) < 0)
		goto cleanup;

	error = FUNC5(out, FUNC1(tree), entry);

cleanup:
	FUNC4(entry);
	FUNC0(tree);

	return error;
}