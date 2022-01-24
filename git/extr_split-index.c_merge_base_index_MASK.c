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
struct split_index {unsigned int saved_cache_nr; unsigned int nr_replacements; int /*<<< orphan*/ * replace_bitmap; int /*<<< orphan*/ * delete_bitmap; int /*<<< orphan*/ ** saved_cache; scalar_t__ nr_deletions; TYPE_1__* base; } ;
struct index_state {unsigned int cache_nr; int /*<<< orphan*/ ** cache; scalar_t__ cache_alloc; struct split_index* split_index; } ;
struct TYPE_2__ {unsigned int cache_nr; int /*<<< orphan*/  cache; } ;

/* Variables and functions */
 int ADD_CACHE_KEEP_CACHE_TREE ; 
 int ADD_CACHE_OK_TO_ADD ; 
 int ADD_CACHE_SKIP_DFCHECK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (struct index_state*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct index_state*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  mark_entry_for_delete ; 
 int /*<<< orphan*/  FUNC9 (struct index_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  replace_entry ; 

void FUNC10(struct index_state *istate)
{
	struct split_index *si = istate->split_index;
	unsigned int i;

	FUNC8(si->base);

	si->saved_cache	    = istate->cache;
	si->saved_cache_nr  = istate->cache_nr;
	istate->cache_nr    = si->base->cache_nr;
	istate->cache	    = NULL;
	istate->cache_alloc = 0;
	FUNC0(istate->cache, istate->cache_nr, istate->cache_alloc);
	FUNC1(istate->cache, si->base->cache, istate->cache_nr);

	si->nr_deletions = 0;
	si->nr_replacements = 0;
	FUNC6(si->replace_bitmap, replace_entry, istate);
	FUNC6(si->delete_bitmap, mark_entry_for_delete, istate);
	if (si->nr_deletions)
		FUNC9(istate, 0);

	for (i = si->nr_replacements; i < si->saved_cache_nr; i++) {
		if (!FUNC4(si->saved_cache[i]))
			FUNC5("corrupt link extension, entry %d should "
			    "have non-zero length name", i);
		FUNC3(istate, si->saved_cache[i],
				ADD_CACHE_OK_TO_ADD |
				ADD_CACHE_KEEP_CACHE_TREE |
				/*
				 * we may have to replay what
				 * merge-recursive.c:update_stages()
				 * does, which has this flag on
				 */
				ADD_CACHE_SKIP_DFCHECK);
		si->saved_cache[i] = NULL;
	}

	FUNC7(si->delete_bitmap);
	FUNC7(si->replace_bitmap);
	FUNC2(si->saved_cache);
	si->delete_bitmap  = NULL;
	si->replace_bitmap = NULL;
	si->saved_cache_nr = 0;
}