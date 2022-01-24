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
struct tree_entry {TYPE_2__* versions; struct tree_content* tree; } ;
struct tree_content {unsigned int entry_count; struct tree_entry** entries; int /*<<< orphan*/  delta_depth; } ;
struct TYPE_3__ {int /*<<< orphan*/  offset; } ;
struct object_entry {scalar_t__ pack_id; TYPE_1__ idx; } ;
struct last_object {int member_3; int /*<<< orphan*/  depth; int /*<<< orphan*/  offset; int /*<<< orphan*/  data; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {int mode; int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int NO_DELTA ; 
 int /*<<< orphan*/  OBJ_TREE ; 
 int /*<<< orphan*/  STRBUF_INIT ; 
 scalar_t__ FUNC0 (int) ; 
 struct object_entry* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tree_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct tree_content*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  new_tree ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  old_tree ; 
 scalar_t__ pack_id ; 
 int /*<<< orphan*/  FUNC6 (struct tree_entry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct last_object*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct tree_entry *root)
{
	struct tree_content *t;
	unsigned int i, j, del;
	struct last_object lo = { STRBUF_INIT, 0, 0, /* no_swap */ 1 };
	struct object_entry *le = NULL;

	if (!FUNC2(&root->versions[1].oid))
		return;

	if (!root->tree)
		FUNC3(root);
	t = root->tree;

	for (i = 0; i < t->entry_count; i++) {
		if (t->entries[i]->tree)
			FUNC8(t->entries[i]);
	}

	if (!(root->versions[0].mode & NO_DELTA))
		le = FUNC1(&root->versions[0].oid);
	if (FUNC0(root->versions[0].mode) && le && le->pack_id == pack_id) {
		FUNC4(t, 0, &old_tree);
		lo.data = old_tree;
		lo.offset = le->idx.offset;
		lo.depth = t->delta_depth;
	}

	FUNC4(t, 1, &new_tree);
	FUNC7(OBJ_TREE, &new_tree, &lo, &root->versions[1].oid, 0);

	t->delta_depth = lo.depth;
	for (i = 0, j = 0, del = 0; i < t->entry_count; i++) {
		struct tree_entry *e = t->entries[i];
		if (e->versions[1].mode) {
			e->versions[0].mode = e->versions[1].mode;
			FUNC5(&e->versions[0].oid, &e->versions[1].oid);
			t->entries[j++] = e;
		} else {
			FUNC6(e);
			del++;
		}
	}
	t->entry_count -= del;
}