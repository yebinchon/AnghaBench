#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct oid_array {int nr; struct object_id* oid; } ;
struct object_id {int dummy; } ;
struct object_array {int dummy; } ;
struct object {scalar_t__ type; int flags; } ;
struct commit_list {TYPE_2__* item; struct commit_list* next; } ;
struct commit {scalar_t__ date; struct commit_list* parents; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ object; } ;

/* Variables and functions */
 scalar_t__ OBJ_COMMIT ; 
 int THEY_HAVE ; 
 int /*<<< orphan*/  FUNC0 (struct object*,int /*<<< orphan*/ *,struct object_array*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC3 (struct oid_array*,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC4 (struct object_id const*) ; 
 scalar_t__ oldest_have ; 
 struct object* FUNC5 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC6(struct oid_array *haves, struct oid_array *common,
			 struct object_array *have_obj)
{
	int i;

	/* Process haves */
	for (i = 0; i < haves->nr; i++) {
		const struct object_id *oid = &haves->oid[i];
		struct object *o;
		int we_knew_they_have = 0;

		if (!FUNC2(oid))
			continue;

		FUNC3(common, oid);

		o = FUNC5(the_repository, oid);
		if (!o)
			FUNC1("oops (%s)", FUNC4(oid));
		if (o->type == OBJ_COMMIT) {
			struct commit_list *parents;
			struct commit *commit = (struct commit *)o;
			if (o->flags & THEY_HAVE)
				we_knew_they_have = 1;
			else
				o->flags |= THEY_HAVE;
			if (!oldest_have || (commit->date < oldest_have))
				oldest_have = commit->date;
			for (parents = commit->parents;
			     parents;
			     parents = parents->next)
				parents->item->object.flags |= THEY_HAVE;
		}
		if (!we_knew_they_have)
			FUNC0(o, NULL, have_obj);
	}

	return 0;
}