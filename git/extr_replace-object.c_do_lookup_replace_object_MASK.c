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
struct repository {TYPE_1__* objects; } ;
struct object_id {int dummy; } ;
struct replace_object {struct object_id replacement; } ;
struct TYPE_2__ {int /*<<< orphan*/  replace_map; } ;

/* Variables and functions */
 int MAXREPLACEDEPTH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id const*) ; 
 struct replace_object* FUNC3 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC4 (struct repository*) ; 

const struct object_id *FUNC5(struct repository *r,
						 const struct object_id *oid)
{
	int depth = MAXREPLACEDEPTH;
	const struct object_id *cur = oid;

	FUNC4(r);

	/* Try to recursively replace the object */
	while (depth-- > 0) {
		struct replace_object *repl_obj =
			FUNC3(r->objects->replace_map, cur);
		if (!repl_obj)
			return cur;
		cur = &repl_obj->replacement;
	}
	FUNC1(FUNC0("replace depth too high for object %s"), FUNC2(oid));
}