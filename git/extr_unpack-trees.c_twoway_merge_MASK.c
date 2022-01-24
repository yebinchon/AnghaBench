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
struct unpack_trees_options {int merge_size; int /*<<< orphan*/  initial_checkout; scalar_t__ reset; struct cache_entry const* df_conflict_entry; } ;
struct cache_entry {int ce_flags; } ;

/* Variables and functions */
 int CE_CONFLICTED ; 
 int FUNC0 (struct cache_entry const*,struct cache_entry const*,struct unpack_trees_options*) ; 
 int FUNC1 (char*,int) ; 
 int FUNC2 (struct cache_entry const*,struct unpack_trees_options*) ; 
 int FUNC3 (struct cache_entry const*,struct cache_entry const*,struct unpack_trees_options*) ; 
 int FUNC4 (struct cache_entry const*,struct unpack_trees_options*) ; 
 scalar_t__ FUNC5 (struct cache_entry const*,struct cache_entry const*) ; 

int FUNC6(const struct cache_entry * const *src,
		 struct unpack_trees_options *o)
{
	const struct cache_entry *current = src[0];
	const struct cache_entry *oldtree = src[1];
	const struct cache_entry *newtree = src[2];

	if (o->merge_size != 2)
		return FUNC1("Cannot do a twoway merge of %d trees",
			     o->merge_size);

	if (oldtree == o->df_conflict_entry)
		oldtree = NULL;
	if (newtree == o->df_conflict_entry)
		newtree = NULL;

	if (current) {
		if (current->ce_flags & CE_CONFLICTED) {
			if (FUNC5(oldtree, newtree) || o->reset) {
				if (!newtree)
					return FUNC0(current, current, o);
				else
					return FUNC3(newtree, current, o);
			}
			return FUNC4(current, o);
		} else if ((!oldtree && !newtree) || /* 4 and 5 */
			 (!oldtree && newtree &&
			  FUNC5(current, newtree)) || /* 6 and 7 */
			 (oldtree && newtree &&
			  FUNC5(oldtree, newtree)) || /* 14 and 15 */
			 (oldtree && newtree &&
			  !FUNC5(oldtree, newtree) && /* 18 and 19 */
			  FUNC5(current, newtree))) {
			return FUNC2(current, o);
		} else if (oldtree && !newtree && FUNC5(current, oldtree)) {
			/* 10 or 11 */
			return FUNC0(oldtree, current, o);
		} else if (oldtree && newtree &&
			 FUNC5(current, oldtree) && !FUNC5(current, newtree)) {
			/* 20 or 21 */
			return FUNC3(newtree, current, o);
		} else
			return FUNC4(current, o);
	}
	else if (newtree) {
		if (oldtree && !o->initial_checkout) {
			/*
			 * deletion of the path was staged;
			 */
			if (FUNC5(oldtree, newtree))
				return 1;
			return FUNC4(oldtree, o);
		}
		return FUNC3(newtree, current, o);
	}
	return FUNC0(oldtree, current, o);
}