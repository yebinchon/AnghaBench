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
struct tag {TYPE_1__* tagged; } ;
struct rev_info {scalar_t__ ignore_missing; } ;
struct object_id {int dummy; } ;
struct object {scalar_t__ type; int flags; } ;
struct commit_list {TYPE_2__* item; struct commit_list* next; } ;
struct commit {struct commit_list* parents; } ;
struct TYPE_4__ {struct object object; } ;
struct TYPE_3__ {int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int BOTTOM ; 
 scalar_t__ OBJ_COMMIT ; 
 scalar_t__ OBJ_TAG ; 
 int /*<<< orphan*/  REV_CMD_PARENTS_ONLY ; 
 int UNINTERESTING ; 
 int /*<<< orphan*/  FUNC0 (struct rev_info*,struct object*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct rev_info*,struct object*,char const*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct commit_list*) ; 
 scalar_t__ FUNC3 (char const*,struct object_id*) ; 
 struct object* FUNC4 (struct rev_info*,char const*,struct object_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct object_id*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct rev_info *revs, const char *arg_, int flags,
			    int exclude_parent)
{
	struct object_id oid;
	struct object *it;
	struct commit *commit;
	struct commit_list *parents;
	int parent_number;
	const char *arg = arg_;

	if (*arg == '^') {
		flags ^= UNINTERESTING | BOTTOM;
		arg++;
	}
	if (FUNC3(arg, &oid))
		return 0;
	while (1) {
		it = FUNC4(revs, arg, &oid, 0);
		if (!it && revs->ignore_missing)
			return 0;
		if (it->type != OBJ_TAG)
			break;
		if (!((struct tag*)it)->tagged)
			return 0;
		FUNC5(&oid, &((struct tag*)it)->tagged->oid);
	}
	if (it->type != OBJ_COMMIT)
		return 0;
	commit = (struct commit *)it;
	if (exclude_parent &&
	    exclude_parent > FUNC2(commit->parents))
		return 0;
	for (parents = commit->parents, parent_number = 1;
	     parents;
	     parents = parents->next, parent_number++) {
		if (exclude_parent && parent_number != exclude_parent)
			continue;

		it = &parents->item->object;
		it->flags |= flags;
		FUNC1(revs, it, arg_, REV_CMD_PARENTS_ONLY, flags);
		FUNC0(revs, it, arg);
	}
	return 1;
}