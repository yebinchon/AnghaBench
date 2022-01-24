#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct index_state {unsigned int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  verify_ce_order ; 

__attribute__((used)) static void FUNC4(struct index_state *istate)
{
	unsigned int i;

	if (!verify_ce_order)
		return;

	for (i = 1; i < istate->cache_nr; i++) {
		struct cache_entry *ce = istate->cache[i - 1];
		struct cache_entry *next_ce = istate->cache[i];
		int name_compare = FUNC3(ce->name, next_ce->name);

		if (0 < name_compare)
			FUNC2(FUNC0("unordered stage entries in index"));
		if (!name_compare) {
			if (!FUNC1(ce))
				FUNC2(FUNC0("multiple stage entries for merged file '%s'"),
				    ce->name);
			if (FUNC1(ce) > FUNC1(next_ce))
				FUNC2(FUNC0("unordered stage entries for '%s'"),
				    ce->name);
		}
	}
}