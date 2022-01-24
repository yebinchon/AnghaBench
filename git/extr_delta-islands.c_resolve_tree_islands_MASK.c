#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tree_islands_todo {struct object_entry* entry; int /*<<< orphan*/  depth; } ;
struct tree_desc {int dummy; } ;
struct tree {int /*<<< orphan*/  size; int /*<<< orphan*/  buffer; } ;
struct repository {int dummy; } ;
struct progress {int dummy; } ;
struct packing_data {int nr_objects; struct object_entry* objects; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct object_entry {TYPE_1__ idx; } ;
struct object {int dummy; } ;
struct name_entry {int /*<<< orphan*/  oid; int /*<<< orphan*/  mode; } ;
struct island_bitmap {int dummy; } ;
typedef  scalar_t__ khiter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tree_islands_todo*,int) ; 
 scalar_t__ OBJ_TREE ; 
 int /*<<< orphan*/  FUNC1 (struct tree_islands_todo*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct progress*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tree_islands_todo*) ; 
 int /*<<< orphan*/  FUNC7 (struct tree*) ; 
 int /*<<< orphan*/  FUNC8 (struct tree_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  island_marks ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct island_bitmap* FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct object* FUNC12 (struct repository*,int /*<<< orphan*/ *) ; 
 struct tree* FUNC13 (struct repository*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct packing_data*,struct object_entry*) ; 
 scalar_t__ FUNC15 (struct object_entry*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (struct tree*) ; 
 int /*<<< orphan*/  FUNC18 (struct object*,struct island_bitmap*) ; 
 struct progress* FUNC19 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct progress**) ; 
 int /*<<< orphan*/  tree_depth_compare ; 
 scalar_t__ FUNC21 (struct tree_desc*,struct name_entry*) ; 

void FUNC22(struct repository *r,
			  int progress,
			  struct packing_data *to_pack)
{
	struct progress *progress_state = NULL;
	struct tree_islands_todo *todo;
	int nr = 0;
	int i;

	if (!island_marks)
		return;

	/*
	 * We process only trees, as commits and tags have already been handled
	 * (and passed their marks on to root trees, as well. We must make sure
	 * to process them in descending tree-depth order so that marks
	 * propagate down the tree properly, even if a sub-tree is found in
	 * multiple parent trees.
	 */
	FUNC0(todo, to_pack->nr_objects);
	for (i = 0; i < to_pack->nr_objects; i++) {
		if (FUNC15(&to_pack->objects[i]) == OBJ_TREE) {
			todo[nr].entry = &to_pack->objects[i];
			todo[nr].depth = FUNC14(to_pack, &to_pack->objects[i]);
			nr++;
		}
	}
	FUNC1(todo, nr, tree_depth_compare);

	if (progress)
		progress_state = FUNC19(FUNC3("Propagating island marks"), nr);

	for (i = 0; i < nr; i++) {
		struct object_entry *ent = todo[i].entry;
		struct island_bitmap *root_marks;
		struct tree *tree;
		struct tree_desc desc;
		struct name_entry entry;
		khiter_t pos;

		pos = FUNC10(island_marks, ent->idx.oid);
		if (pos >= FUNC9(island_marks))
			continue;

		root_marks = FUNC11(island_marks, pos);

		tree = FUNC13(r, &ent->idx.oid);
		if (!tree || FUNC17(tree) < 0)
			FUNC4(FUNC3("bad tree object %s"), FUNC16(&ent->idx.oid));

		FUNC8(&desc, tree->buffer, tree->size);
		while (FUNC21(&desc, &entry)) {
			struct object *obj;

			if (FUNC2(entry.mode))
				continue;

			obj = FUNC12(r, &entry.oid);
			if (!obj)
				continue;

			FUNC18(obj, root_marks);
		}

		FUNC7(tree);

		FUNC5(progress_state, i+1);
	}

	FUNC20(&progress_state);
	FUNC6(todo);
}