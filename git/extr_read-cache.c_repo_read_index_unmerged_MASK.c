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
struct repository {struct index_state* index; } ;
struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int ce_flags; int ce_namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  ce_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADD_CACHE_SKIP_DFCHECK ; 
 int CE_CONFLICTED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct index_state*,struct cache_entry*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_entry*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cache_entry* FUNC6 (struct index_state*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct repository*) ; 

int FUNC9(struct repository *repo)
{
	struct index_state *istate;
	int i;
	int unmerged = 0;

	FUNC8(repo);
	istate = repo->index;
	for (i = 0; i < istate->cache_nr; i++) {
		struct cache_entry *ce = istate->cache[i];
		struct cache_entry *new_ce;
		int len;

		if (!FUNC3(ce))
			continue;
		unmerged = 1;
		len = FUNC2(ce);
		new_ce = FUNC6(istate, len);
		FUNC7(new_ce->name, ce->name, len);
		new_ce->ce_flags = FUNC4(0) | CE_CONFLICTED;
		new_ce->ce_namelen = len;
		new_ce->ce_mode = ce->ce_mode;
		if (FUNC1(istate, new_ce, ADD_CACHE_SKIP_DFCHECK))
			return FUNC5(FUNC0("%s: cannot drop to stage #0"),
				     new_ce->name);
	}
	return unmerged;
}