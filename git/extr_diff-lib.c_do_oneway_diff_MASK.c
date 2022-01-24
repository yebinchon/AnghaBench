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
struct unpack_trees_options {scalar_t__ index_only; struct rev_info* unpack_data; } ;
struct TYPE_2__ {scalar_t__ ita_invisible_in_index; } ;
struct rev_info {TYPE_1__ diffopt; int /*<<< orphan*/  ignore_merges; } ;
struct diff_filepair {int /*<<< orphan*/  one; } ;
struct cache_entry {int ce_flags; int /*<<< orphan*/  ce_mode; int /*<<< orphan*/  oid; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int CE_VALID ; 
 scalar_t__ FUNC0 (struct cache_entry const*) ; 
 scalar_t__ FUNC1 (struct cache_entry const*) ; 
 scalar_t__ FUNC2 (struct cache_entry const*) ; 
 int /*<<< orphan*/  FUNC3 (struct rev_info*,char*,struct cache_entry const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct diff_filepair* FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rev_info*,struct cache_entry const*,struct cache_entry const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rev_info*,struct cache_entry const*,int,int) ; 

__attribute__((used)) static void FUNC8(struct unpack_trees_options *o,
			   const struct cache_entry *idx,
			   const struct cache_entry *tree)
{
	struct rev_info *revs = o->unpack_data;
	int match_missing, cached;

	/*
	 * i-t-a entries do not actually exist in the index (if we're
	 * looking at its content)
	 */
	if (o->index_only &&
	    revs->diffopt.ita_invisible_in_index &&
	    idx && FUNC0(idx)) {
		idx = NULL;
		if (!tree)
			return;	/* nothing to diff.. */
	}

	/* if the entry is not checked out, don't examine work tree */
	cached = o->index_only ||
		(idx && ((idx->ce_flags & CE_VALID) || FUNC1(idx)));
	/*
	 * Backward compatibility wart - "diff-index -m" does
	 * not mean "do not ignore merges", but "match_missing".
	 *
	 * But with the revision flag parsing, that's found in
	 * "!revs->ignore_merges".
	 */
	match_missing = !revs->ignore_merges;

	if (cached && idx && FUNC2(idx)) {
		struct diff_filepair *pair;
		pair = FUNC4(&revs->diffopt, idx->name);
		if (tree)
			FUNC5(pair->one, &tree->oid, 1,
				      tree->ce_mode);
		return;
	}

	/*
	 * Something added to the tree?
	 */
	if (!tree) {
		FUNC7(revs, idx, cached, match_missing);
		return;
	}

	/*
	 * Something removed from the tree?
	 */
	if (!idx) {
		FUNC3(revs, "-", tree, &tree->oid, 1,
				     tree->ce_mode, 0);
		return;
	}

	/* Show difference between old and new */
	FUNC6(revs, tree, idx, 1, cached, match_missing);
}