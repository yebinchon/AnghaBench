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
struct unpack_trees_options {int /*<<< orphan*/  result; } ;
typedef  struct cache_entry {int ce_flags; int /*<<< orphan*/  oid; } const cache_entry ;

/* Variables and functions */
 int CE_ADDED ; 
 int CE_CONFLICTED ; 
 int CE_NEW_SKIP_WORKTREE ; 
 int CE_SKIP_WORKTREE ; 
 int /*<<< orphan*/  CE_STAGEMASK ; 
 int CE_UPDATE ; 
 int /*<<< orphan*/  ERROR_WOULD_LOSE_UNTRACKED_OVERWRITTEN ; 
 int FUNC0 (struct cache_entry const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct unpack_trees_options*) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_entry const*,struct cache_entry const*) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_entry const*) ; 
 int /*<<< orphan*/  FUNC3 (struct unpack_trees_options*,struct cache_entry const*,int,int /*<<< orphan*/ ) ; 
 struct cache_entry const* FUNC4 (struct cache_entry const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cache_entry const*,struct unpack_trees_options*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct cache_entry const*,struct cache_entry const*) ; 
 scalar_t__ FUNC8 (struct cache_entry const*) ; 
 scalar_t__ FUNC9 (struct cache_entry const*,int /*<<< orphan*/ ,struct unpack_trees_options*) ; 
 scalar_t__ FUNC10 (struct cache_entry const*,struct unpack_trees_options*) ; 

__attribute__((used)) static int FUNC11(const struct cache_entry *ce,
			const struct cache_entry *old,
			struct unpack_trees_options *o)
{
	int update = CE_UPDATE;
	struct cache_entry *merge = FUNC4(ce, &o->result);

	if (!old) {
		/*
		 * New index entries. In sparse checkout, the following
		 * verify_absent() will be delayed until after
		 * traverse_trees() finishes in unpack_trees(), then:
		 *
		 *  - CE_NEW_SKIP_WORKTREE will be computed correctly
		 *  - verify_absent() be called again, this time with
		 *    correct CE_NEW_SKIP_WORKTREE
		 *
		 * verify_absent() call here does nothing in sparse
		 * checkout (i.e. o->skip_sparse_checkout == 0)
		 */
		update |= CE_ADDED;
		merge->ce_flags |= CE_NEW_SKIP_WORKTREE;

		if (FUNC9(merge,
				  ERROR_WOULD_LOSE_UNTRACKED_OVERWRITTEN, o)) {
			FUNC2(merge);
			return -1;
		}
		FUNC5(merge, o);

		if (FUNC8(ce)) {
			int ret = FUNC0(ce, NULL,
							    FUNC6(&ce->oid),
							    o);
			if (ret)
				return ret;
		}

	} else if (!(old->ce_flags & CE_CONFLICTED)) {
		/*
		 * See if we can re-use the old CE directly?
		 * That way we get the uptodate stat info.
		 *
		 * This also removes the UPDATE flag on a match; otherwise
		 * we will end up overwriting local changes in the work tree.
		 */
		if (FUNC7(old, merge)) {
			FUNC1(merge, old);
			update = 0;
		} else {
			if (FUNC10(old, o)) {
				FUNC2(merge);
				return -1;
			}
			/* Migrate old flags over */
			update |= old->ce_flags & (CE_SKIP_WORKTREE | CE_NEW_SKIP_WORKTREE);
			FUNC5(old, o);
		}

		if (FUNC8(ce)) {
			int ret = FUNC0(ce, FUNC6(&old->oid),
							    FUNC6(&ce->oid),
							    o);
			if (ret)
				return ret;
		}
	} else {
		/*
		 * Previously unmerged entry left as an existence
		 * marker by read_index_unmerged();
		 */
		FUNC5(old, o);
	}

	FUNC3(o, merge, update, CE_STAGEMASK);
	return 1;
}