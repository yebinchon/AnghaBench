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
struct string_list {int nr; TYPE_1__* items; int /*<<< orphan*/  cmp; } ;
struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int ce_flags; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {char* string; } ;

/* Variables and functions */
 int CE_MATCHED ; 
 struct string_list STRING_LIST_INIT_NODUP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  fspathcmp ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct string_list*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct index_state *index)
{
	struct string_list list = STRING_LIST_INIT_NODUP;
	int i;

	for (i = 0; i < index->cache_nr; i++) {
		struct cache_entry *ce = index->cache[i];

		if (!(ce->ce_flags & CE_MATCHED))
			continue;

		FUNC2(&list, ce->name);
		ce->ce_flags &= ~CE_MATCHED;
	}

	list.cmp = fspathcmp;
	FUNC4(&list);

	if (list.nr) {
		FUNC5(FUNC0("the following paths have collided (e.g. case-sensitive paths\n"
			  "on a case-insensitive filesystem) and only one from the same\n"
			  "colliding group is in the working tree:\n"));

		for (i = 0; i < list.nr; i++)
			FUNC1(stderr, "  '%s'\n", list.items[i].string);
	}

	FUNC3(&list, 0);
}