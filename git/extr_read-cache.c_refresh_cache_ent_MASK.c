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
struct cache_entry {int ce_flags; scalar_t__ ce_namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  ce_mode; } ;

/* Variables and functions */
 int CE_FSMONITOR_VALID ; 
 unsigned int CE_MATCH_IGNORE_FSMONITOR ; 
 unsigned int CE_MATCH_IGNORE_MISSING ; 
 unsigned int CE_MATCH_IGNORE_SKIP_WORKTREE ; 
 unsigned int CE_MATCH_IGNORE_VALID ; 
 unsigned int CE_MATCH_REFRESH ; 
 int CE_VALID ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ assume_unchanged ; 
 int /*<<< orphan*/  FUNC1 (struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_entry*) ; 
 scalar_t__ FUNC3 (struct cache_entry*) ; 
 scalar_t__ FUNC4 (struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct cache_entry*,struct cache_entry*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC6 (struct index_state*,struct cache_entry*,struct stat*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct index_state*,struct cache_entry*,struct stat*,unsigned int) ; 
 scalar_t__ FUNC9 (struct index_state*,struct cache_entry*,struct stat*,unsigned int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct stat*) ; 
 struct cache_entry* FUNC11 (struct index_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct index_state*,struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct index_state*) ; 

__attribute__((used)) static struct cache_entry *FUNC15(struct index_state *istate,
					     struct cache_entry *ce,
					     unsigned int options, int *err,
					     int *changed_ret)
{
	struct stat st;
	struct cache_entry *updated;
	int changed;
	int refresh = options & CE_MATCH_REFRESH;
	int ignore_valid = options & CE_MATCH_IGNORE_VALID;
	int ignore_skip_worktree = options & CE_MATCH_IGNORE_SKIP_WORKTREE;
	int ignore_missing = options & CE_MATCH_IGNORE_MISSING;
	int ignore_fsmonitor = options & CE_MATCH_IGNORE_FSMONITOR;

	if (!refresh || FUNC4(ce))
		return ce;

	if (!ignore_fsmonitor)
		FUNC14(istate);
	/*
	 * CE_VALID or CE_SKIP_WORKTREE means the user promised us
	 * that the change to the work tree does not matter and told
	 * us not to worry.
	 */
	if (!ignore_skip_worktree && FUNC3(ce)) {
		FUNC1(ce);
		return ce;
	}
	if (!ignore_valid && (ce->ce_flags & CE_VALID)) {
		FUNC1(ce);
		return ce;
	}
	if (!ignore_fsmonitor && (ce->ce_flags & CE_FSMONITOR_VALID)) {
		FUNC1(ce);
		return ce;
	}

	if (FUNC7(ce->name, FUNC2(ce))) {
		if (ignore_missing)
			return ce;
		if (err)
			*err = ENOENT;
		return NULL;
	}

	if (FUNC10(ce->name, &st) < 0) {
		if (ignore_missing && errno == ENOENT)
			return ce;
		if (err)
			*err = errno;
		return NULL;
	}

	changed = FUNC8(istate, ce, &st, options);
	if (changed_ret)
		*changed_ret = changed;
	if (!changed) {
		/*
		 * The path is unchanged.  If we were told to ignore
		 * valid bit, then we did the actual stat check and
		 * found that the entry is unmodified.  If the entry
		 * is not marked VALID, this is the place to mark it
		 * valid again, under "assume unchanged" mode.
		 */
		if (ignore_valid && assume_unchanged &&
		    !(ce->ce_flags & CE_VALID))
			; /* mark this one VALID again */
		else {
			/*
			 * We do not mark the index itself "modified"
			 * because CE_UPTODATE flag is in-core only;
			 * we are not going to write this change out.
			 */
			if (!FUNC0(ce->ce_mode)) {
				FUNC1(ce);
				FUNC12(istate, ce);
			}
			return ce;
		}
	}

	if (FUNC9(istate, ce, &st, options)) {
		if (err)
			*err = EINVAL;
		return NULL;
	}

	updated = FUNC11(istate, FUNC2(ce));
	FUNC5(updated, ce);
	FUNC13(updated->name, ce->name, ce->ce_namelen + 1);
	FUNC6(istate, updated, &st);
	/*
	 * If ignore_valid is not set, we should leave CE_VALID bit
	 * alone.  Otherwise, paths marked with --no-assume-unchanged
	 * (i.e. things to be edited) will reacquire CE_VALID bit
	 * automatically, which is not really what we want.
	 */
	if (!ignore_valid && assume_unchanged &&
	    !(ce->ce_flags & CE_VALID))
		updated->ce_flags &= ~CE_VALID;

	/* istate->cache_changed is updated in the caller */
	return updated;
}