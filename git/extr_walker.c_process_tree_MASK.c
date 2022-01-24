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
struct walker {int dummy; } ;
struct tree_desc {int dummy; } ;
struct object {int dummy; } ;
struct tree {struct object object; int /*<<< orphan*/  size; int /*<<< orphan*/  buffer; } ;
struct name_entry {int /*<<< orphan*/  oid; int /*<<< orphan*/  mode; } ;
struct blob {struct object object; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tree*) ; 
 int /*<<< orphan*/  FUNC3 (struct tree_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct blob* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct tree* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct tree*) ; 
 scalar_t__ FUNC7 (struct walker*,struct object*) ; 
 int /*<<< orphan*/  the_repository ; 
 scalar_t__ FUNC8 (struct tree_desc*,struct name_entry*) ; 

__attribute__((used)) static int FUNC9(struct walker *walker, struct tree *tree)
{
	struct tree_desc desc;
	struct name_entry entry;

	if (FUNC6(tree))
		return -1;

	FUNC3(&desc, tree->buffer, tree->size);
	while (FUNC8(&desc, &entry)) {
		struct object *obj = NULL;

		/* submodule commits are not stored in the superproject */
		if (FUNC1(entry.mode))
			continue;
		if (FUNC0(entry.mode)) {
			struct tree *tree = FUNC5(the_repository,
							&entry.oid);
			if (tree)
				obj = &tree->object;
		}
		else {
			struct blob *blob = FUNC4(the_repository,
							&entry.oid);
			if (blob)
				obj = &blob->object;
		}
		if (!obj || FUNC7(walker, obj))
			return -1;
	}
	FUNC2(tree);
	return 0;
}