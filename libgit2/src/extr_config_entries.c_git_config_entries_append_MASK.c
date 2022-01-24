#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ git_config_entry ;
struct TYPE_13__ {TYPE_3__* list; int /*<<< orphan*/  map; } ;
typedef  TYPE_2__ git_config_entries ;
struct TYPE_14__ {TYPE_1__* entry; struct TYPE_14__* last; } ;
typedef  TYPE_3__ config_entry_list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__**,TYPE_3__*) ; 
 TYPE_3__* FUNC2 (int,int) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 

int FUNC5(git_config_entries *entries, git_config_entry *entry)
{
	config_entry_list *existing, *var;
	int error = 0;

	var = FUNC2(1, sizeof(config_entry_list));
	FUNC0(var);
	var->entry = entry;

	if ((existing = FUNC3(entries->map, entry->name)) == NULL) {
		/*
		 * We only ever inspect `last` from the first config
		 * entry in a multivar. In case where this new entry is
		 * the first one in the entry map, it will also be the
		 * last one at the time of adding it, which is
		 * why we set `last` here to itself. Otherwise we
		 * do not have to set `last` and leave it set to
		 * `NULL`.
		 */
		var->last = var;

		error = FUNC4(entries->map, entry->name, var);
	} else {
		FUNC1(&existing, var);
	}

	var = FUNC2(1, sizeof(config_entry_list));
	FUNC0(var);
	var->entry = entry;
	FUNC1(&entries->list, var);

	return error;
}