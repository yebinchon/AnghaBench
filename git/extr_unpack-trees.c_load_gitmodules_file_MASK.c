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
struct checkout {int dummy; } ;
struct cache_entry {int ce_flags; } ;

/* Variables and functions */
 int CE_UPDATE ; 
 int CE_WT_REMOVE ; 
 int /*<<< orphan*/  GITMODULES_FILE ; 
 int /*<<< orphan*/  FUNC0 (struct cache_entry*,struct checkout*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct index_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static void FUNC5(struct index_state *index,
				 struct checkout *state)
{
	int pos = FUNC1(index, GITMODULES_FILE, FUNC3(GITMODULES_FILE));

	if (pos >= 0) {
		struct cache_entry *ce = index->cache[pos];
		if (!state && ce->ce_flags & CE_WT_REMOVE) {
			FUNC2(the_repository);
		} else if (state && (ce->ce_flags & CE_UPDATE)) {
			FUNC4(the_repository);
			FUNC0(ce, state, NULL, NULL);
			FUNC2(the_repository);
		}
	}
}