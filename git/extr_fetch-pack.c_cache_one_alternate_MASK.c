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
struct object {int flags; } ;
struct alternate_object_cache {scalar_t__ nr; struct object** items; int /*<<< orphan*/  alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct object**,scalar_t__,int /*<<< orphan*/ ) ; 
 int ALTERNATE ; 
 struct object* FUNC1 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static void FUNC2(const struct object_id *oid,
				void *vcache)
{
	struct alternate_object_cache *cache = vcache;
	struct object *obj = FUNC1(the_repository, oid);

	if (!obj || (obj->flags & ALTERNATE))
		return;

	obj->flags |= ALTERNATE;
	FUNC0(cache->items, cache->nr + 1, cache->alloc);
	cache->items[cache->nr++] = obj;
}