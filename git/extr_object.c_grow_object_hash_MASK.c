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
struct object {int dummy; } ;
struct TYPE_2__ {int obj_hash_size; struct object** obj_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct object**) ; 
 int /*<<< orphan*/  FUNC1 (struct object*,struct object**,int) ; 
 struct object** FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct repository *r)
{
	int i;
	/*
	 * Note that this size must always be power-of-2 to match hash_obj
	 * above.
	 */
	int new_hash_size = r->parsed_objects->obj_hash_size < 32 ? 32 : 2 * r->parsed_objects->obj_hash_size;
	struct object **new_hash;

	new_hash = FUNC2(new_hash_size, sizeof(struct object *));
	for (i = 0; i < r->parsed_objects->obj_hash_size; i++) {
		struct object *obj = r->parsed_objects->obj_hash[i];

		if (!obj)
			continue;
		FUNC1(obj, new_hash, new_hash_size);
	}
	FUNC0(r->parsed_objects->obj_hash);
	r->parsed_objects->obj_hash = new_hash;
	r->parsed_objects->obj_hash_size = new_hash_size;
}