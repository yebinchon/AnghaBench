#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct walk_object {int /*<<< orphan*/  id; } ;
struct TYPE_3__ {int /*<<< orphan*/  object_pool; } ;
typedef  TYPE_1__ git_packbuilder ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 struct walk_object* FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct walk_object **out, git_packbuilder *pb, const git_oid *id)
{
	struct walk_object *obj;

	obj = FUNC2(&pb->object_pool, 1);
	if (!obj) {
		FUNC0();
		return -1;
	}

	FUNC1(&obj->id, id);

	*out = obj;
	return 0;
}