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
struct unpack_trees_options {int /*<<< orphan*/  src_index; scalar_t__ reset; scalar_t__ index_only; } ;
struct stat {int dummy; } ;
struct cache_entry {int ce_flags; int /*<<< orphan*/  name; int /*<<< orphan*/  ce_mode; int /*<<< orphan*/  oid; } ;
typedef  enum unpack_trees_error_types { ____Placeholder_unpack_trees_error_types } unpack_trees_error_types ;

/* Variables and functions */
 int CE_MATCH_IGNORE_SKIP_WORKTREE ; 
 int CE_MATCH_IGNORE_VALID ; 
 int CE_VALID ; 
 scalar_t__ ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct unpack_trees_options*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct cache_entry const*) ; 
 scalar_t__ FUNC3 (struct cache_entry const*) ; 
 int FUNC4 (struct cache_entry const*,char*,int /*<<< orphan*/ ,struct unpack_trees_options*) ; 
 scalar_t__ errno ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,struct cache_entry const*,struct stat*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct cache_entry const*) ; 

__attribute__((used)) static int FUNC9(const struct cache_entry *ce,
			     struct unpack_trees_options *o,
			     enum unpack_trees_error_types error_type)
{
	struct stat st;

	if (o->index_only)
		return 0;

	/*
	 * CE_VALID and CE_SKIP_WORKTREE cheat, we better check again
	 * if this entry is truly up-to-date because this file may be
	 * overwritten.
	 */
	if ((ce->ce_flags & CE_VALID) || FUNC2(ce))
		; /* keep checking */
	else if (o->reset || FUNC3(ce))
		return 0;

	if (!FUNC6(ce->name, &st)) {
		int flags = CE_MATCH_IGNORE_VALID|CE_MATCH_IGNORE_SKIP_WORKTREE;
		unsigned changed = FUNC5(o->src_index, ce, &st, flags);

		if (FUNC8(ce)) {
			int r = FUNC4(ce,
				"HEAD", FUNC7(&ce->oid), o);
			if (r)
				return FUNC1(o, error_type, ce->name);
			return 0;
		}

		if (!changed)
			return 0;
		/*
		 * Historic default policy was to allow submodule to be out
		 * of sync wrt the superproject index. If the submodule was
		 * not considered interesting above, we don't care here.
		 */
		if (FUNC0(ce->ce_mode))
			return 0;

		errno = 0;
	}
	if (errno == ENOENT)
		return 0;
	return FUNC1(o, error_type, ce->name);
}