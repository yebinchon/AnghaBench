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
struct stat {int dummy; } ;
struct index_state {int dummy; } ;
struct cache_entry {int ce_flags; } ;

/* Variables and functions */
 int CE_FSMONITOR_VALID ; 
 unsigned int CE_MATCH_IGNORE_FSMONITOR ; 
 unsigned int CE_MATCH_IGNORE_SKIP_WORKTREE ; 
 unsigned int CE_MATCH_IGNORE_VALID ; 
 unsigned int CE_MATCH_RACY_IS_DIRTY ; 
 int CE_VALID ; 
 int DATA_CHANGED ; 
 int MODE_CHANGED ; 
 int TYPE_CHANGED ; 
 scalar_t__ FUNC0 (struct cache_entry const*) ; 
 unsigned int FUNC1 (struct cache_entry const*,struct stat*) ; 
 unsigned int FUNC2 (struct index_state*,struct cache_entry const*,struct stat*) ; 
 scalar_t__ FUNC3 (struct cache_entry const*) ; 
 scalar_t__ FUNC4 (struct index_state*,struct cache_entry const*) ; 
 int /*<<< orphan*/  FUNC5 (struct index_state*) ; 

int FUNC6(struct index_state *istate,
		  const struct cache_entry *ce, struct stat *st,
		  unsigned int options)
{
	unsigned int changed;
	int ignore_valid = options & CE_MATCH_IGNORE_VALID;
	int ignore_skip_worktree = options & CE_MATCH_IGNORE_SKIP_WORKTREE;
	int assume_racy_is_modified = options & CE_MATCH_RACY_IS_DIRTY;
	int ignore_fsmonitor = options & CE_MATCH_IGNORE_FSMONITOR;

	if (!ignore_fsmonitor)
		FUNC5(istate);
	/*
	 * If it's marked as always valid in the index, it's
	 * valid whatever the checked-out copy says.
	 *
	 * skip-worktree has the same effect with higher precedence
	 */
	if (!ignore_skip_worktree && FUNC3(ce))
		return 0;
	if (!ignore_valid && (ce->ce_flags & CE_VALID))
		return 0;
	if (!ignore_fsmonitor && (ce->ce_flags & CE_FSMONITOR_VALID))
		return 0;

	/*
	 * Intent-to-add entries have not been added, so the index entry
	 * by definition never matches what is in the work tree until it
	 * actually gets added.
	 */
	if (FUNC0(ce))
		return DATA_CHANGED | TYPE_CHANGED | MODE_CHANGED;

	changed = FUNC1(ce, st);

	/*
	 * Within 1 second of this sequence:
	 * 	echo xyzzy >file && git-update-index --add file
	 * running this command:
	 * 	echo frotz >file
	 * would give a falsely clean cache entry.  The mtime and
	 * length match the cache, and other stat fields do not change.
	 *
	 * We could detect this at update-index time (the cache entry
	 * being registered/updated records the same time as "now")
	 * and delay the return from git-update-index, but that would
	 * effectively mean we can make at most one commit per second,
	 * which is not acceptable.  Instead, we check cache entries
	 * whose mtime are the same as the index file timestamp more
	 * carefully than others.
	 */
	if (!changed && FUNC4(istate, ce)) {
		if (assume_racy_is_modified)
			changed |= DATA_CHANGED;
		else
			changed |= FUNC2(istate, ce, st);
	}

	return changed;
}