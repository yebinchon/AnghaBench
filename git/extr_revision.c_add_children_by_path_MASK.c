#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tree_desc {int dummy; } ;
struct TYPE_3__ {int flags; } ;
struct tree {TYPE_1__ object; int /*<<< orphan*/  size; int /*<<< orphan*/  buffer; } ;
struct repository {int dummy; } ;
struct name_entry {int /*<<< orphan*/  oid; int /*<<< orphan*/  path; int /*<<< orphan*/  mode; } ;
struct hashmap {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct blob {TYPE_2__ object; } ;

/* Variables and functions */
#define  OBJ_BLOB 129 
#define  OBJ_TREE 128 
 int UNINTERESTING ; 
 int /*<<< orphan*/  FUNC0 (struct tree*) ; 
 int /*<<< orphan*/  FUNC1 (struct tree_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct blob* FUNC2 (struct repository*,int /*<<< orphan*/ *) ; 
 struct tree* FUNC3 (struct repository*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct tree*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hashmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct tree_desc*,struct name_entry*) ; 

__attribute__((used)) static void FUNC8(struct repository *r,
				 struct tree *tree,
				 struct hashmap *map)
{
	struct tree_desc desc;
	struct name_entry entry;

	if (!tree)
		return;

	if (FUNC5(tree, 1) < 0)
		return;

	FUNC1(&desc, tree->buffer, tree->size);
	while (FUNC7(&desc, &entry)) {
		switch (FUNC4(entry.mode)) {
		case OBJ_TREE:
			FUNC6(map, entry.path, &entry.oid);

			if (tree->object.flags & UNINTERESTING) {
				struct tree *child = FUNC3(r, &entry.oid);
				if (child)
					child->object.flags |= UNINTERESTING;
			}
			break;
		case OBJ_BLOB:
			if (tree->object.flags & UNINTERESTING) {
				struct blob *child = FUNC2(r, &entry.oid);
				if (child)
					child->object.flags |= UNINTERESTING;
			}
			break;
		default:
			/* Subproject commit - not in this repository */
			break;
		}
	}

	FUNC0(tree);
}