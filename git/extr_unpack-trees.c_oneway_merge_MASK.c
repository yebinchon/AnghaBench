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
struct unpack_trees_options {int merge_size; scalar_t__ update; int /*<<< orphan*/  src_index; scalar_t__ reset; struct cache_entry const* df_conflict_entry; } ;
struct stat {int dummy; } ;
struct cache_entry {int /*<<< orphan*/  ce_mode; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int CE_MATCH_IGNORE_SKIP_WORKTREE ; 
 int CE_MATCH_IGNORE_VALID ; 
 int /*<<< orphan*/  CE_STAGEMASK ; 
 int CE_UPDATE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct unpack_trees_options*,struct cache_entry const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_entry const*) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_entry const*) ; 
 int FUNC4 (struct cache_entry const*,struct cache_entry const*,struct unpack_trees_options*) ; 
 int FUNC5 (char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct cache_entry const*,struct stat*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC8 (struct cache_entry const*,struct cache_entry const*,struct unpack_trees_options*) ; 
 scalar_t__ FUNC9 (struct cache_entry const*,struct cache_entry const*) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct cache_entry const*,struct unpack_trees_options*) ; 

int FUNC12(const struct cache_entry * const *src,
		 struct unpack_trees_options *o)
{
	const struct cache_entry *old = src[0];
	const struct cache_entry *a = src[1];

	if (o->merge_size != 1)
		return FUNC5("Cannot do a oneway merge of %d trees",
			     o->merge_size);

	if (!a || a == o->df_conflict_entry)
		return FUNC4(old, old, o);

	if (old && FUNC9(old, a)) {
		int update = 0;
		if (o->reset && o->update && !FUNC3(old) && !FUNC2(old)) {
			struct stat st;
			if (FUNC7(old->name, &st) ||
			    FUNC6(o->src_index, old, &st, CE_MATCH_IGNORE_VALID|CE_MATCH_IGNORE_SKIP_WORKTREE))
				update |= CE_UPDATE;
		}
		if (o->update && FUNC0(old->ce_mode) &&
		    FUNC10() && !FUNC11(old, o))
			update |= CE_UPDATE;
		FUNC1(o, old, update, CE_STAGEMASK);
		return 0;
	}
	return FUNC8(a, old, o);
}