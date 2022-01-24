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
struct tree_desc {int dummy; } ;
struct tree {int /*<<< orphan*/  size; int /*<<< orphan*/  buffer; } ;
struct repository {int dummy; } ;
struct name_entry {int /*<<< orphan*/  oid; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
#define  OBJ_BLOB 129 
#define  OBJ_TREE 128 
 int /*<<< orphan*/  FUNC0 (struct tree*) ; 
 int /*<<< orphan*/  FUNC1 (struct tree_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct repository*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct repository*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct repository*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct tree*,int) ; 
 scalar_t__ FUNC8 (struct tree_desc*,struct name_entry*) ; 

__attribute__((used)) static void FUNC9(struct repository *r,
					     struct tree *tree)
{
	struct tree_desc desc;
	struct name_entry entry;

	if (FUNC7(tree, 1) < 0)
		return;

	FUNC1(&desc, tree->buffer, tree->size);
	while (FUNC8(&desc, &entry)) {
		switch (FUNC6(entry.mode)) {
		case OBJ_TREE:
			FUNC5(r, FUNC3(r, &entry.oid));
			break;
		case OBJ_BLOB:
			FUNC4(FUNC2(r, &entry.oid));
			break;
		default:
			/* Subproject commit - not in this repository */
			break;
		}
	}

	/*
	 * We don't care about the tree any more
	 * after it has been marked uninteresting.
	 */
	FUNC0(tree);
}