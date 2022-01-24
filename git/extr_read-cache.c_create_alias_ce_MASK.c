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
struct index_state {int dummy; } ;
struct cache_entry {int ce_flags; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int CE_ADDED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_entry*,struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cache_entry* FUNC4 (struct index_state*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct index_state*,struct cache_entry*) ; 

__attribute__((used)) static struct cache_entry *FUNC7(struct index_state *istate,
					   struct cache_entry *ce,
					   struct cache_entry *alias)
{
	int len;
	struct cache_entry *new_entry;

	if (alias->ce_flags & CE_ADDED)
		FUNC3(FUNC0("will not add file alias '%s' ('%s' already exists in index)"),
		    ce->name, alias->name);

	/* Ok, create the new entry using the name of the existing alias */
	len = FUNC1(alias);
	new_entry = FUNC4(istate, len);
	FUNC5(new_entry->name, alias->name, len);
	FUNC2(new_entry, ce);
	FUNC6(istate, ce);
	return new_entry;
}