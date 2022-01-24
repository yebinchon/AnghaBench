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
struct string_list_item {struct stage_data* util; } ;
struct string_list {int strdup_strings; } ;
struct stage_data {TYPE_1__* stages; } ;
struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int /*<<< orphan*/  oid; int /*<<< orphan*/  ce_mode; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 size_t FUNC0 (struct cache_entry const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct string_list_item* FUNC2 (struct string_list*,int /*<<< orphan*/ ) ; 
 struct string_list_item* FUNC3 (struct string_list*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int,int) ; 

__attribute__((used)) static struct string_list *FUNC5(struct index_state *istate)
{
	struct string_list *unmerged = FUNC4(1, sizeof(struct string_list));
	int i;

	unmerged->strdup_strings = 1;

	for (i = 0; i < istate->cache_nr; i++) {
		struct string_list_item *item;
		struct stage_data *e;
		const struct cache_entry *ce = istate->cache[i];
		if (!FUNC0(ce))
			continue;

		item = FUNC3(unmerged, ce->name);
		if (!item) {
			item = FUNC2(unmerged, ce->name);
			item->util = FUNC4(1, sizeof(struct stage_data));
		}
		e = item->util;
		e->stages[FUNC0(ce)].mode = ce->ce_mode;
		FUNC1(&e->stages[FUNC0(ce)].oid, &ce->oid);
	}

	return unmerged;
}