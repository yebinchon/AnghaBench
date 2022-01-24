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
struct index_state {int cache_nr; int /*<<< orphan*/  cache_changed; scalar_t__ cache; int /*<<< orphan*/  cache_alloc; } ;
struct cache_entry {int dummy; } ;

/* Variables and functions */
 int ADD_CACHE_JUST_APPEND ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CE_ENTRY_ADDED ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int) ; 
 int FUNC2 (struct index_state*,struct cache_entry*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct index_state*,int,struct cache_entry*) ; 

int FUNC4(struct index_state *istate, struct cache_entry *ce, int option)
{
	int pos;

	if (option & ADD_CACHE_JUST_APPEND)
		pos = istate->cache_nr;
	else {
		int ret;
		ret = FUNC2(istate, ce, option);
		if (ret <= 0)
			return ret;
		pos = ret - 1;
	}

	/* Make sure the array is big enough .. */
	FUNC0(istate->cache, istate->cache_nr + 1, istate->cache_alloc);

	/* Add it in.. */
	istate->cache_nr++;
	if (istate->cache_nr > pos + 1)
		FUNC1(istate->cache + pos + 1, istate->cache + pos,
			   istate->cache_nr - pos - 1);
	FUNC3(istate, pos, ce);
	istate->cache_changed |= CE_ENTRY_ADDED;
	return 0;
}