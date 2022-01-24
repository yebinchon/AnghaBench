#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct todo_list {int nr; scalar_t__ current; struct todo_item* items; } ;
struct todo_item {scalar_t__ command; TYPE_5__* commit; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  oid; } ;
struct TYPE_10__ {TYPE_4__ object; TYPE_3__* parents; } ;
struct TYPE_8__ {TYPE_2__* item; scalar_t__ next; } ;
struct TYPE_6__ {struct object_id oid; } ;
struct TYPE_7__ {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct todo_item*,struct todo_item*,int) ; 
 scalar_t__ TODO_NOOP ; 
 scalar_t__ TODO_PICK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct object_id*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct object_id*,struct object_id*) ; 
 scalar_t__ FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (struct todo_list*,int /*<<< orphan*/ ) ; 
 char* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct object_id*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct repository*,struct todo_list*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct repository *r,
				  struct todo_list *todo_list,
				  struct object_id *base_oid)
{
	struct object_id *parent_oid;
	int i;

	for (i = 0; i < todo_list->nr; i++) {
		struct todo_item *item = todo_list->items + i;

		if (item->command >= TODO_NOOP)
			continue;
		if (item->command != TODO_PICK)
			break;
		if (FUNC8(item->commit)) {
			return FUNC2(FUNC1("could not parse commit '%s'"),
				FUNC5(&item->commit->object.oid));
		}
		if (!item->commit->parents)
			break; /* root commit */
		if (item->commit->parents->next)
			break; /* merge commit */
		parent_oid = &item->commit->parents->item->object.oid;
		if (!FUNC7(parent_oid, base_oid))
			break;
		FUNC6(base_oid, &item->commit->object.oid);
	}
	if (i > 0) {
		const char *done_path = FUNC10();

		if (FUNC12(r, todo_list, done_path, NULL, NULL, i, 0)) {
			FUNC3(FUNC1("could not write to '%s'"), done_path);
			return -1;
		}

		FUNC0(todo_list->items, todo_list->items + i, todo_list->nr - i);
		todo_list->nr -= i;
		todo_list->current = 0;

		if (FUNC4(FUNC9(todo_list, 0)))
			FUNC11(base_oid, FUNC9(todo_list, 0));
	}

	return 0;
}