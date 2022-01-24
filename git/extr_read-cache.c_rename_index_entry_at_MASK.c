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
struct index_state {struct cache_entry** cache; } ;
struct cache_entry {int ce_namelen; int /*<<< orphan*/  name; scalar_t__ index; int /*<<< orphan*/  ce_flags; } ;

/* Variables and functions */
 int ADD_CACHE_OK_TO_ADD ; 
 int ADD_CACHE_OK_TO_REPLACE ; 
 int /*<<< orphan*/  CE_HASHED ; 
 int /*<<< orphan*/  FUNC0 (struct index_state*,struct cache_entry*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct index_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_entry*,struct cache_entry*) ; 
 struct cache_entry* FUNC3 (struct index_state*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct index_state*,int) ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct index_state*,int /*<<< orphan*/ ) ; 

void FUNC8(struct index_state *istate, int nr, const char *new_name)
{
	struct cache_entry *old_entry = istate->cache[nr], *new_entry;
	int namelen = FUNC6(new_name);

	new_entry = FUNC3(istate, namelen);
	FUNC2(new_entry, old_entry);
	new_entry->ce_flags &= ~CE_HASHED;
	new_entry->ce_namelen = namelen;
	new_entry->index = 0;
	FUNC4(new_entry->name, new_name, namelen + 1);

	FUNC1(istate, old_entry->name);
	FUNC7(istate, old_entry->name);
	FUNC5(istate, nr);
	FUNC0(istate, new_entry, ADD_CACHE_OK_TO_ADD|ADD_CACHE_OK_TO_REPLACE);
}