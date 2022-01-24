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
struct object {scalar_t__ type; int /*<<< orphan*/  oid; } ;
typedef  enum peel_status { ____Placeholder_peel_status } peel_status ;

/* Variables and functions */
 scalar_t__ OBJ_NONE ; 
 scalar_t__ OBJ_TAG ; 
 int PEEL_INVALID ; 
 int PEEL_NON_TAG ; 
 int PEEL_PEELED ; 
 struct object* FUNC0 (struct object*) ; 
 struct object* FUNC1 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct object*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct object_id const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct object_id*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  the_repository ; 

enum peel_status FUNC5(const struct object_id *name, struct object_id *oid)
{
	struct object *o = FUNC1(name);

	if (o->type == OBJ_NONE) {
		int type = FUNC3(the_repository, name, NULL);
		if (type < 0 || !FUNC2(the_repository, o, type, 0))
			return PEEL_INVALID;
	}

	if (o->type != OBJ_TAG)
		return PEEL_NON_TAG;

	o = FUNC0(o);
	if (!o)
		return PEEL_INVALID;

	FUNC4(oid, &o->oid);
	return PEEL_PEELED;
}