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
struct repository {TYPE_1__* parsed_objects; } ;
struct object_id {int dummy; } ;
struct object {int /*<<< orphan*/  oid; } ;
struct TYPE_2__ {unsigned int obj_hash_size; struct object** obj_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct object*,struct object*) ; 
 unsigned int FUNC1 (struct object_id const*,unsigned int) ; 
 scalar_t__ FUNC2 (struct object_id const*,int /*<<< orphan*/ *) ; 

struct object *FUNC3(struct repository *r, const struct object_id *oid)
{
	unsigned int i, first;
	struct object *obj;

	if (!r->parsed_objects->obj_hash)
		return NULL;

	first = i = FUNC1(oid, r->parsed_objects->obj_hash_size);
	while ((obj = r->parsed_objects->obj_hash[i]) != NULL) {
		if (FUNC2(oid, &obj->oid))
			break;
		i++;
		if (i == r->parsed_objects->obj_hash_size)
			i = 0;
	}
	if (obj && i != first) {
		/*
		 * Move object to where we started to look for it so
		 * that we do not need to walk the hash table the next
		 * time we look for it.
		 */
		FUNC0(r->parsed_objects->obj_hash[i],
		     r->parsed_objects->obj_hash[first]);
	}
	return obj;
}