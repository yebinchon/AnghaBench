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
struct tag {struct object* tagged; } ;
struct repository {int dummy; } ;
struct object {int type; int /*<<< orphan*/  oid; int /*<<< orphan*/  parsed; } ;
struct commit {int dummy; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_2__ {struct object object; } ;

/* Variables and functions */
 int OBJ_ANY ; 
 scalar_t__ OBJ_COMMIT ; 
 scalar_t__ OBJ_TAG ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct repository*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (struct repository*,struct commit*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

struct object *FUNC5(struct repository *r, const char *name, int namelen,
				 struct object *o, enum object_type expected_type)
{
	if (name && !namelen)
		namelen = FUNC3(name);
	while (1) {
		if (!o || (!o->parsed && !FUNC1(r, &o->oid)))
			return NULL;
		if (expected_type == OBJ_ANY || o->type == expected_type)
			return o;
		if (o->type == OBJ_TAG)
			o = ((struct tag*) o)->tagged;
		else if (o->type == OBJ_COMMIT)
			o = &(FUNC2(r, ((struct commit *)o))->object);
		else {
			if (name)
				FUNC0("%.*s: expected %s type, but the object "
				      "dereferences to %s type",
				      namelen, name, FUNC4(expected_type),
				      FUNC4(o->type));
			return NULL;
		}
	}
}