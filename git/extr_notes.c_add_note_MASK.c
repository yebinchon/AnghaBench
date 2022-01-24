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
struct object_id {int dummy; } ;
struct notes_tree {int dirty; int /*<<< orphan*/  root; scalar_t__ combine_notes; int /*<<< orphan*/  initialized; } ;
struct leaf_node {int /*<<< orphan*/  val_oid; int /*<<< orphan*/  key_oid; } ;
typedef  scalar_t__ combine_notes_fn ;

/* Variables and functions */
 int /*<<< orphan*/  PTR_TYPE_NOTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct notes_tree default_notes_tree ; 
 int FUNC1 (struct notes_tree*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct leaf_node*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct object_id const*) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct notes_tree *t, const struct object_id *object_oid,
		const struct object_id *note_oid, combine_notes_fn combine_notes)
{
	struct leaf_node *l;

	if (!t)
		t = &default_notes_tree;
	FUNC0(t->initialized);
	t->dirty = 1;
	if (!combine_notes)
		combine_notes = t->combine_notes;
	l = (struct leaf_node *) FUNC3(sizeof(struct leaf_node));
	FUNC2(&l->key_oid, object_oid);
	FUNC2(&l->val_oid, note_oid);
	return FUNC1(t, t->root, 0, l, PTR_TYPE_NOTE, combine_notes);
}