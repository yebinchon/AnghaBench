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
struct index_state {int cache_nr; struct cache_entry const** cache; } ;
typedef  struct cache_entry {int /*<<< orphan*/  ce_mode; } const cache_entry ;

/* Variables and functions */
 int PUNTED ; 
 int RESOLVED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int THREE_STAGED ; 
 scalar_t__ FUNC1 (struct cache_entry const*,struct cache_entry const*) ; 
 int FUNC2 (struct cache_entry const*) ; 

__attribute__((used)) static int FUNC3(struct index_state *istate, int i, int *type)
{
	const struct cache_entry *e = istate->cache[i];

	if (!FUNC2(e)) {
		*type = RESOLVED;
		return i + 1;
	}

	*type = PUNTED;
	while (i < istate->cache_nr && FUNC2(istate->cache[i]) == 1)
		i++;

	/* Only handle regular files with both stages #2 and #3 */
	if (i + 1 < istate->cache_nr) {
		const struct cache_entry *e2 = istate->cache[i];
		const struct cache_entry *e3 = istate->cache[i + 1];
		if (FUNC2(e2) == 2 &&
		    FUNC2(e3) == 3 &&
		    FUNC1(e, e3) &&
		    FUNC0(e2->ce_mode) &&
		    FUNC0(e3->ce_mode))
			*type = THREE_STAGED;
	}

	/* Skip the entries with the same name */
	while (i < istate->cache_nr && FUNC1(e, istate->cache[i]))
		i++;
	return i;
}