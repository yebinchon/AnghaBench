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
struct index_state {int name_hash_initialized; int cache_nr; int /*<<< orphan*/ * cache; int /*<<< orphan*/  dir_hash; int /*<<< orphan*/  name_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  cache_entry_cmp ; 
 int /*<<< orphan*/  dir_entry_cmp ; 
 int /*<<< orphan*/  FUNC0 (struct index_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (struct index_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct index_state*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(struct index_state *istate)
{

	if (istate->name_hash_initialized)
		return;
	FUNC6();
	FUNC3(&istate->name_hash, cache_entry_cmp, NULL, istate->cache_nr);
	FUNC3(&istate->dir_hash, dir_entry_cmp, NULL, istate->cache_nr);

	if (FUNC4(istate)) {
		/*
		 * Disable item counting and automatic rehashing because
		 * we do per-chain (mod n) locking rather than whole hashmap
		 * locking and we need to prevent the table-size from changing
		 * and bucket items from being redistributed.
		 */
		FUNC1(&istate->dir_hash);
		FUNC5(istate);
		FUNC2(&istate->dir_hash);
	} else {
		int nr;
		for (nr = 0; nr < istate->cache_nr; nr++)
			FUNC0(istate, istate->cache[nr]);
	}

	istate->name_hash_initialized = 1;
	FUNC7("initialize name hash");
}