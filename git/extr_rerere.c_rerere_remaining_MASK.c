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
struct string_list_item {int /*<<< orphan*/  util; } ;
struct string_list {int dummy; } ;
struct repository {TYPE_1__* index; } ;
struct cache_entry {scalar_t__ name; } ;
struct TYPE_2__ {int cache_nr; struct cache_entry** cache; } ;

/* Variables and functions */
 int PUNTED ; 
 int /*<<< orphan*/  RERERE_READONLY ; 
 int /*<<< orphan*/  RERERE_RESOLVED ; 
 int RESOLVED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (TYPE_1__*,int,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list_item*) ; 
 scalar_t__ FUNC4 (struct repository*) ; 
 scalar_t__ FUNC5 (struct repository*,struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct string_list*,char const*) ; 
 struct string_list_item* FUNC7 (struct string_list*,char const*) ; 

int FUNC8(struct repository *r, struct string_list *merge_rr)
{
	int i;

	if (FUNC5(r, merge_rr, RERERE_READONLY))
		return 0;
	if (FUNC4(r) < 0)
		return FUNC2(FUNC0("index file corrupt"));

	for (i = 0; i < r->index->cache_nr;) {
		int conflict_type;
		const struct cache_entry *e = r->index->cache[i];
		i = FUNC1(r->index, i, &conflict_type);
		if (conflict_type == PUNTED)
			FUNC6(merge_rr, (const char *)e->name);
		else if (conflict_type == RESOLVED) {
			struct string_list_item *it;
			it = FUNC7(merge_rr, (const char *)e->name);
			if (it != NULL) {
				FUNC3(it);
				it->util = RERERE_RESOLVED;
			}
		}
	}
	return 0;
}