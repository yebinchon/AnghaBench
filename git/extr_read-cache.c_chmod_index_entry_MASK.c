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
struct index_state {int /*<<< orphan*/  cache_changed; } ;
struct cache_entry {int ce_mode; int /*<<< orphan*/  ce_flags; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CE_ENTRY_CHANGED ; 
 int /*<<< orphan*/  CE_UPDATE_IN_BASE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct index_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct index_state*,struct cache_entry*) ; 

int FUNC3(struct index_state *istate, struct cache_entry *ce,
		      char flip)
{
	if (!FUNC0(ce->ce_mode))
		return -1;
	switch (flip) {
	case '+':
		ce->ce_mode |= 0111;
		break;
	case '-':
		ce->ce_mode &= ~0111;
		break;
	default:
		return -2;
	}
	FUNC1(istate, ce->name);
	ce->ce_flags |= CE_UPDATE_IN_BASE;
	FUNC2(istate, ce);
	istate->cache_changed |= CE_ENTRY_CHANGED;

	return 0;
}