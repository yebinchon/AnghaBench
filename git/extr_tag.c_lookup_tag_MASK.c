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
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_TAG ; 
 int /*<<< orphan*/  FUNC0 (struct repository*) ; 
 struct tag* FUNC1 (struct repository*,struct object_id const*,int /*<<< orphan*/ ) ; 
 struct object* FUNC2 (struct repository*,struct object_id const*) ; 
 struct tag* FUNC3 (struct repository*,struct object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct tag *FUNC4(struct repository *r, const struct object_id *oid)
{
	struct object *obj = FUNC2(r, oid);
	if (!obj)
		return FUNC1(r, oid, FUNC0(r));
	return FUNC3(r, obj, OBJ_TAG, 0);
}