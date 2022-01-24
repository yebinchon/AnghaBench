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
struct progress {int dummy; } ;
struct pathspec {int dummy; } ;
struct index_state {int cache_nr; int /*<<< orphan*/  cache_changed; struct cache_entry** cache; } ;
struct cache_entry {int /*<<< orphan*/  name; int /*<<< orphan*/  ce_flags; int /*<<< orphan*/  ce_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CE_ENTRY_CHANGED ; 
 unsigned int CE_MATCH_IGNORE_MISSING ; 
 unsigned int CE_MATCH_IGNORE_VALID ; 
 unsigned int CE_MATCH_REFRESH ; 
 int /*<<< orphan*/  CE_UPDATE_IN_BASE ; 
 int /*<<< orphan*/  CE_VALID ; 
 int EINVAL ; 
 int ENOENT ; 
 unsigned int REFRESH_IGNORE_MISSING ; 
 unsigned int REFRESH_IGNORE_SUBMODULES ; 
 unsigned int REFRESH_IN_PORCELAIN ; 
 unsigned int REFRESH_PROGRESS ; 
 unsigned int REFRESH_QUIET ; 
 unsigned int REFRESH_REALLY ; 
 unsigned int REFRESH_UNMERGED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int TYPE_CHANGED ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct index_state*,struct cache_entry*,struct pathspec const*,char*) ; 
 scalar_t__ FUNC4 (struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct progress*,int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct index_state*,struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct index_state*,struct pathspec const*,int /*<<< orphan*/ ) ; 
 struct cache_entry* FUNC9 (struct index_state*,struct cache_entry*,unsigned int,int*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct index_state*,int,struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,int /*<<< orphan*/ ,int,int*,char const*) ; 
 struct progress* FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct progress**) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

int FUNC17(struct index_state *istate, unsigned int flags,
		  const struct pathspec *pathspec,
		  char *seen, const char *header_msg)
{
	int i;
	int has_errors = 0;
	int really = (flags & REFRESH_REALLY) != 0;
	int allow_unmerged = (flags & REFRESH_UNMERGED) != 0;
	int quiet = (flags & REFRESH_QUIET) != 0;
	int not_new = (flags & REFRESH_IGNORE_MISSING) != 0;
	int ignore_submodules = (flags & REFRESH_IGNORE_SUBMODULES) != 0;
	int first = 1;
	int in_porcelain = (flags & REFRESH_IN_PORCELAIN);
	unsigned int options = (CE_MATCH_REFRESH |
				(really ? CE_MATCH_IGNORE_VALID : 0) |
				(not_new ? CE_MATCH_IGNORE_MISSING : 0));
	const char *modified_fmt;
	const char *deleted_fmt;
	const char *typechange_fmt;
	const char *added_fmt;
	const char *unmerged_fmt;
	struct progress *progress = NULL;

	if (flags & REFRESH_PROGRESS && FUNC6(2))
		progress = FUNC12(FUNC1("Refresh index"),
						  istate->cache_nr);

	FUNC15();
	modified_fmt   = in_porcelain ? "M\t%s\n" : "%s: needs update\n";
	deleted_fmt    = in_porcelain ? "D\t%s\n" : "%s: needs update\n";
	typechange_fmt = in_porcelain ? "T\t%s\n" : "%s: needs update\n";
	added_fmt      = in_porcelain ? "A\t%s\n" : "%s: needs update\n";
	unmerged_fmt   = in_porcelain ? "U\t%s\n" : "%s: needs merge\n";
	/*
	 * Use the multi-threaded preload_index() to refresh most of the
	 * cache entries quickly then in the single threaded loop below,
	 * we only have to do the special cases that are left.
	 */
	FUNC8(istate, pathspec, 0);
	for (i = 0; i < istate->cache_nr; i++) {
		struct cache_entry *ce, *new_entry;
		int cache_errno = 0;
		int changed = 0;
		int filtered = 0;

		ce = istate->cache[i];
		if (ignore_submodules && FUNC0(ce->ce_mode))
			continue;

		if (pathspec && !FUNC3(istate, ce, pathspec, seen))
			filtered = 1;

		if (FUNC4(ce)) {
			while ((i < istate->cache_nr) &&
			       ! FUNC14(istate->cache[i]->name, ce->name))
				i++;
			i--;
			if (allow_unmerged)
				continue;
			if (!filtered)
				FUNC11(unmerged_fmt, ce->name, in_porcelain,
					  &first, header_msg);
			has_errors = 1;
			continue;
		}

		if (filtered)
			continue;

		new_entry = FUNC9(istate, ce, options, &cache_errno, &changed);
		if (new_entry == ce)
			continue;
		if (progress)
			FUNC5(progress, i);
		if (!new_entry) {
			const char *fmt;

			if (really && cache_errno == EINVAL) {
				/* If we are doing --really-refresh that
				 * means the index is not valid anymore.
				 */
				ce->ce_flags &= ~CE_VALID;
				ce->ce_flags |= CE_UPDATE_IN_BASE;
				FUNC7(istate, ce);
				istate->cache_changed |= CE_ENTRY_CHANGED;
			}
			if (quiet)
				continue;

			if (cache_errno == ENOENT)
				fmt = deleted_fmt;
			else if (FUNC2(ce))
				fmt = added_fmt; /* must be before other checks */
			else if (changed & TYPE_CHANGED)
				fmt = typechange_fmt;
			else
				fmt = modified_fmt;
			FUNC11(fmt,
				  ce->name, in_porcelain, &first, header_msg);
			has_errors = 1;
			continue;
		}

		FUNC10(istate, i, new_entry);
	}
	if (progress) {
		FUNC5(progress, istate->cache_nr);
		FUNC13(&progress);
	}
	FUNC16("refresh index");
	return has_errors;
}