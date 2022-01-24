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
struct stat {int dummy; } ;
struct checkout {TYPE_1__* istate; } ;
struct cache_entry {int ce_flags; int /*<<< orphan*/  name; int /*<<< orphan*/  ce_stat_data; } ;
struct TYPE_2__ {int cache_nr; struct cache_entry** cache; } ;

/* Variables and functions */
 int CE_MATCHED ; 
 int CE_SKIP_WORKTREE ; 
 int CE_VALID ; 
 int check_stat ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct stat*) ; 

__attribute__((used)) static void FUNC2(const struct checkout *state,
				   struct cache_entry *ce, struct stat *st)
{
	int i, trust_ino = check_stat;

#if defined(GIT_WINDOWS_NATIVE) || defined(__CYGWIN__)
	trust_ino = 0;
#endif

	ce->ce_flags |= CE_MATCHED;

	for (i = 0; i < state->istate->cache_nr; i++) {
		struct cache_entry *dup = state->istate->cache[i];

		if (dup == ce)
			break;

		if (dup->ce_flags & (CE_MATCHED | CE_VALID | CE_SKIP_WORKTREE))
			continue;

		if ((trust_ino && !FUNC1(&dup->ce_stat_data, st)) ||
		    (!trust_ino && !FUNC0(ce->name, dup->name))) {
			dup->ce_flags |= CE_MATCHED;
			break;
		}
	}
}