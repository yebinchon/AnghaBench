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
struct tree {int dummy; } ;
struct tag {int dummy; } ;
struct parsed_object_pool {unsigned int obj_hash_size; struct object** shallow_stat; struct object** object_state; struct object** tag_state; struct object** commit_state; struct object** tree_state; struct object** blob_state; int /*<<< orphan*/ * buffer_slab; struct object** obj_hash; } ;
struct object {scalar_t__ type; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct object**) ; 
 scalar_t__ OBJ_COMMIT ; 
 scalar_t__ OBJ_TAG ; 
 scalar_t__ OBJ_TREE ; 
 int /*<<< orphan*/  FUNC1 (struct object**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tree*) ; 
 int /*<<< orphan*/  FUNC4 (struct parsed_object_pool*,struct commit*) ; 
 int /*<<< orphan*/  FUNC5 (struct tag*) ; 
 int /*<<< orphan*/  FUNC6 (struct object**) ; 

void FUNC7(struct parsed_object_pool *o)
{
	/*
	 * As objects are allocated in slabs (see alloc.c), we do
	 * not need to free each object, but each slab instead.
	 *
	 * Before doing so, we need to free any additional memory
	 * the objects may hold.
	 */
	unsigned i;

	for (i = 0; i < o->obj_hash_size; i++) {
		struct object *obj = o->obj_hash[i];

		if (!obj)
			continue;

		if (obj->type == OBJ_TREE)
			FUNC3((struct tree*)obj);
		else if (obj->type == OBJ_COMMIT)
			FUNC4(o, (struct commit*)obj);
		else if (obj->type == OBJ_TAG)
			FUNC5((struct tag*)obj);
	}

	FUNC0(o->obj_hash);
	o->obj_hash_size = 0;

	FUNC2(o->buffer_slab);
	o->buffer_slab = NULL;

	FUNC1(o->blob_state);
	FUNC1(o->tree_state);
	FUNC1(o->commit_state);
	FUNC1(o->tag_state);
	FUNC1(o->object_state);
	FUNC6(o->shallow_stat);
	FUNC0(o->blob_state);
	FUNC0(o->tree_state);
	FUNC0(o->commit_state);
	FUNC0(o->tag_state);
	FUNC0(o->object_state);
	FUNC0(o->shallow_stat);
}