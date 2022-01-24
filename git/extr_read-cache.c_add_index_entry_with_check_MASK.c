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
struct index_state {int cache_nr; TYPE_1__** cache; } ;
struct cache_entry {int /*<<< orphan*/  name; int /*<<< orphan*/  ce_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ADD_CACHE_KEEP_CACHE_TREE ; 
 int ADD_CACHE_NEW_ONLY ; 
 int ADD_CACHE_OK_TO_ADD ; 
 int ADD_CACHE_OK_TO_REPLACE ; 
 int ADD_CACHE_SKIP_DFCHECK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct index_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_entry*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,struct cache_entry*) ; 
 scalar_t__ FUNC4 (struct cache_entry*) ; 
 scalar_t__ FUNC5 (struct index_state*,struct cache_entry*,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct index_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct index_state*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct index_state*,int,struct cache_entry*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct index_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct index_state *istate, struct cache_entry *ce, int option)
{
	int pos;
	int ok_to_add = option & ADD_CACHE_OK_TO_ADD;
	int ok_to_replace = option & ADD_CACHE_OK_TO_REPLACE;
	int skip_df_check = option & ADD_CACHE_SKIP_DFCHECK;
	int new_only = option & ADD_CACHE_NEW_ONLY;

	if (!(option & ADD_CACHE_KEEP_CACHE_TREE))
		FUNC1(istate, ce->name);

	/*
	 * If this entry's path sorts after the last entry in the index,
	 * we can avoid searching for it.
	 */
	if (istate->cache_nr > 0 &&
		FUNC11(ce->name, istate->cache[istate->cache_nr - 1]->name) > 0)
		pos = FUNC8(istate->cache_nr);
	else
		pos = FUNC7(istate, ce->name, FUNC2(ce), FUNC4(ce));

	/* existing match? Just replace it. */
	if (pos >= 0) {
		if (!new_only)
			FUNC10(istate, pos, ce);
		return 0;
	}
	pos = -pos-1;

	if (!(option & ADD_CACHE_KEEP_CACHE_TREE))
		FUNC12(istate, ce->name);

	/*
	 * Inserting a merged entry ("stage 0") into the index
	 * will always replace all non-merged entries..
	 */
	if (pos < istate->cache_nr && FUNC4(ce) == 0) {
		while (FUNC3(istate->cache[pos], ce)) {
			ok_to_add = 1;
			if (!FUNC9(istate, pos))
				break;
		}
	}

	if (!ok_to_add)
		return -1;
	if (!FUNC13(ce->name, ce->ce_mode))
		return FUNC6(FUNC0("invalid path '%s'"), ce->name);

	if (!skip_df_check &&
	    FUNC5(istate, ce, pos, ok_to_replace)) {
		if (!ok_to_replace)
			return FUNC6(FUNC0("'%s' appears as both a file and as a directory"),
				     ce->name);
		pos = FUNC7(istate, ce->name, FUNC2(ce), FUNC4(ce));
		pos = -pos-1;
	}
	return pos + 1;
}