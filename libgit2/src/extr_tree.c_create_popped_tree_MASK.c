#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  bld; scalar_t__ tree; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ tree_stack_entry ;
typedef  int /*<<< orphan*/  git_tree_entry ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_9__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIT_ERROR_TREE ; 
 int /*<<< orphan*/  GIT_FILEMODE_TREE ; 
 scalar_t__ GIT_OBJECT_TREE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(tree_stack_entry *current, tree_stack_entry *popped, git_buf *component)
{
	int error;
	git_oid new_tree;

	FUNC7(popped->tree);

	/* If the tree would be empty, remove it from the one higher up */
	if (FUNC8(popped->bld) == 0) {
		FUNC9(popped->bld);
		error = FUNC11(current->bld, popped->name);
		FUNC1(popped->name);
		return error;
	}

	error = FUNC12(&new_tree, popped->bld);
	FUNC9(popped->bld);

	if (error < 0) {
		FUNC1(popped->name);
		return error;
	}

	/* We've written out the tree, now we have to put the new value into its parent */
	FUNC2(component);
	FUNC3(component, popped->name);
	FUNC1(popped->name);

	FUNC0(component->ptr);

	/* Error out if this would create a D/F conflict in this update */
	if (current->tree) {
		const git_tree_entry *to_replace;
		to_replace = FUNC5(current->tree, component->ptr);
		if (to_replace && FUNC6(to_replace) != GIT_OBJECT_TREE) {
			FUNC4(GIT_ERROR_TREE, "D/F conflict when updating tree");
			return -1;
		}
	}

	return FUNC10(NULL, current->bld, component->ptr, &new_tree, GIT_FILEMODE_TREE);
}