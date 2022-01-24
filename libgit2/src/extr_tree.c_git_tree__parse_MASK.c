#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  odb_obj; } ;
typedef  TYPE_1__ git_tree ;
typedef  int /*<<< orphan*/  git_odb_object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(void *_tree, git_odb_object *odb_obj)
{
	git_tree *tree = _tree;

	if ((FUNC3(tree,
	    FUNC0(odb_obj),
	    FUNC2(odb_obj))) < 0)
		return -1;

	if (FUNC1(&tree->odb_obj, odb_obj) < 0)
		return -1;

	return 0;
}