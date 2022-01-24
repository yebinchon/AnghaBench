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
struct notes_tree {int initialized; struct int_node* root; scalar_t__ dirty; scalar_t__ combine_notes; int /*<<< orphan*/ * ref; int /*<<< orphan*/ * update_ref; int /*<<< orphan*/ * prev_non_note; int /*<<< orphan*/ * first_non_note; } ;
struct leaf_node {int /*<<< orphan*/  val_oid; int /*<<< orphan*/  key_oid; } ;
struct int_node {int dummy; } ;
typedef  scalar_t__ combine_notes_fn ;

/* Variables and functions */
 int NOTES_INIT_EMPTY ; 
 int NOTES_INIT_WRITABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ combine_notes_concatenate ; 
 char* FUNC1 () ; 
 struct notes_tree default_notes_tree ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,...) ; 
 scalar_t__ FUNC3 (char const*,struct object_id*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct object_id*,char*,struct object_id*,unsigned short*) ; 
 int /*<<< orphan*/  FUNC5 (struct notes_tree*,struct leaf_node*,struct int_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct object_id*) ; 
 scalar_t__ FUNC9 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  the_repository ; 
 scalar_t__ FUNC10 (int,int) ; 
 int /*<<< orphan*/ * FUNC11 (char const*) ; 

void FUNC12(struct notes_tree *t, const char *notes_ref,
		combine_notes_fn combine_notes, int flags)
{
	struct object_id oid, object_oid;
	unsigned short mode;
	struct leaf_node root_tree;

	if (!t)
		t = &default_notes_tree;
	FUNC0(!t->initialized);

	if (!notes_ref)
		notes_ref = FUNC1();

	if (!combine_notes)
		combine_notes = combine_notes_concatenate;

	t->root = (struct int_node *) FUNC10(1, sizeof(struct int_node));
	t->first_non_note = NULL;
	t->prev_non_note = NULL;
	t->ref = FUNC11(notes_ref);
	t->update_ref = (flags & NOTES_INIT_WRITABLE) ? t->ref : NULL;
	t->combine_notes = combine_notes;
	t->initialized = 1;
	t->dirty = 0;

	if (flags & NOTES_INIT_EMPTY || !notes_ref ||
	    FUNC3(notes_ref, &object_oid))
		return;
	if (flags & NOTES_INIT_WRITABLE && FUNC9(notes_ref, &object_oid))
		FUNC2("Cannot use notes ref %s", notes_ref);
	if (FUNC4(the_repository, &object_oid, "", &oid, &mode))
		FUNC2("Failed to read notes tree referenced by %s (%s)",
		    notes_ref, FUNC6(&object_oid));

	FUNC7(&root_tree.key_oid);
	FUNC8(&root_tree.val_oid, &oid);
	FUNC5(t, &root_tree, t->root, 0);
}