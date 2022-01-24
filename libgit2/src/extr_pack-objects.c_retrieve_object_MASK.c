#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct walk_object {int /*<<< orphan*/  id; } ;
struct TYPE_4__ {int /*<<< orphan*/  walk_objects; } ;
typedef  TYPE_1__ git_packbuilder ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 struct walk_object* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct walk_object*) ; 
 int FUNC2 (struct walk_object**,TYPE_1__*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC3(struct walk_object **out, git_packbuilder *pb, const git_oid *id)
{
	struct walk_object *obj;
	int error;

	if ((obj = FUNC0(pb->walk_objects, id)) == NULL) {
		if ((error = FUNC2(&obj, pb, id)) < 0)
			return error;

		if ((error = FUNC1(pb->walk_objects, &obj->id, obj)) < 0)
			return error;
	}

	*out = obj;
	return 0;
}