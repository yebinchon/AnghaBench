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
struct tag {int dummy; } ;
struct oid_array {int dummy; } ;
struct object_id {int dummy; } ;
struct object {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ OBJ_TAG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 struct object_id* FUNC2 (struct tag*) ; 
 scalar_t__ FUNC3 (struct oid_array*,struct object_id const*) ; 
 struct object* FUNC4 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static const struct object_id *FUNC5(struct oid_array *points_at,
					       const struct object_id *oid,
					       const char *refname)
{
	const struct object_id *tagged_oid = NULL;
	struct object *obj;

	if (FUNC3(points_at, oid) >= 0)
		return oid;
	obj = FUNC4(the_repository, oid);
	if (!obj)
		FUNC1(FUNC0("malformed object at '%s'"), refname);
	if (obj->type == OBJ_TAG)
		tagged_oid = FUNC2((struct tag *)obj);
	if (tagged_oid && FUNC3(points_at, tagged_oid) >= 0)
		return tagged_oid;
	return NULL;
}