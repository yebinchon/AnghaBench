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
struct todo_list {int nr; struct todo_item* items; } ;
struct todo_item {scalar_t__ command; int flags; int /*<<< orphan*/  arg_len; TYPE_2__* commit; } ;
struct strbuf {int dummy; } ;
struct repository {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;

/* Variables and functions */
 scalar_t__ TODO_COMMENT ; 
 int TODO_EDIT_MERGE_MSG ; 
 unsigned int TODO_LIST_ABBREVIATE_CMDS ; 
 unsigned int TODO_LIST_SHORTEN_IDS ; 
 scalar_t__ TODO_MERGE ; 
 char FUNC0 (scalar_t__) ; 
 char* FUNC1 (scalar_t__) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct todo_list*,struct todo_item*) ; 

__attribute__((used)) static void FUNC8(struct repository *r, struct todo_list *todo_list,
				struct strbuf *buf, int num, unsigned flags)
{
	struct todo_item *item;
	int i, max = todo_list->nr;

	if (num > 0 && num < max)
		max = num;

	for (item = todo_list->items, i = 0; i < max; i++, item++) {
		/* if the item is not a command write it and continue */
		if (item->command >= TODO_COMMENT) {
			FUNC5(buf, "%.*s\n", item->arg_len,
				    FUNC7(todo_list, item));
			continue;
		}

		/* add command to the buffer */
		if (flags & TODO_LIST_ABBREVIATE_CMDS)
			FUNC4(buf, FUNC0(item->command));
		else
			FUNC6(buf, FUNC1(item->command));

		/* add commit id */
		if (item->commit) {
			const char *oid = flags & TODO_LIST_SHORTEN_IDS ?
					  FUNC3(item->commit) :
					  FUNC2(&item->commit->object.oid);

			if (item->command == TODO_MERGE) {
				if (item->flags & TODO_EDIT_MERGE_MSG)
					FUNC6(buf, " -c");
				else
					FUNC6(buf, " -C");
			}

			FUNC5(buf, " %s", oid);
		}

		/* add all the rest */
		if (!item->arg_len)
			FUNC4(buf, '\n');
		else
			FUNC5(buf, " %.*s\n", item->arg_len,
				    FUNC7(todo_list, item));
	}
}