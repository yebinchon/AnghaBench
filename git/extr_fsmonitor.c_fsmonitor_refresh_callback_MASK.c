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
struct cache_entry {int /*<<< orphan*/  ce_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CE_FSMONITOR_VALID ; 
 int FUNC0 (struct index_state*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  trace_fsmonitor ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct index_state*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct index_state *istate, const char *name)
{
	int pos = FUNC0(istate, name, FUNC1(name));

	if (pos >= 0) {
		struct cache_entry *ce = istate->cache[pos];
		ce->ce_flags &= ~CE_FSMONITOR_VALID;
	}

	/*
	 * Mark the untracked cache dirty even if it wasn't found in the index
	 * as it could be a new untracked file.
	 */
	FUNC2(&trace_fsmonitor, "fsmonitor_refresh_callback '%s'", name);
	FUNC3(istate, name, 0);
}