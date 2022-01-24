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
struct object {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  REMOTE ; 
 struct object* FUNC0 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct object*) ; 
 int /*<<< orphan*/  FUNC2 (struct object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  objects ; 
 struct object* FUNC3 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static void FUNC4(const struct object_id *oid)
{
	struct object *obj;

	obj = FUNC0(the_repository, oid);
	if (!obj)
		obj = FUNC3(the_repository, oid);

	/* Ignore remote objects that don't exist locally */
	if (!obj)
		return;

	obj->flags |= REMOTE;
	if (!FUNC1(objects, obj))
		FUNC2(obj, &objects);
}