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
struct object_id {int /*<<< orphan*/  hash; } ;
struct notes_tree {int /*<<< orphan*/  root; int /*<<< orphan*/  initialized; } ;
struct leaf_node {struct object_id const val_oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct notes_tree default_notes_tree ; 
 struct leaf_node* FUNC1 (struct notes_tree*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

const struct object_id *FUNC2(struct notes_tree *t,
		const struct object_id *oid)
{
	struct leaf_node *found;

	if (!t)
		t = &default_notes_tree;
	FUNC0(t->initialized);
	found = FUNC1(t, t->root, 0, oid->hash);
	return found ? &found->val_oid : NULL;
}