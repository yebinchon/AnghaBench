#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct unpack_trees_options {int exiting_early; struct cache_entry const* df_conflict_entry; struct rev_info* unpack_data; } ;
struct TYPE_4__ {TYPE_1__* repo; } ;
struct rev_info {TYPE_2__ diffopt; int /*<<< orphan*/  prune_data; } ;
struct cache_entry {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct cache_entry const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct unpack_trees_options*,struct cache_entry const*,struct cache_entry const*) ; 

__attribute__((used)) static int FUNC3(const struct cache_entry * const *src,
		       struct unpack_trees_options *o)
{
	const struct cache_entry *idx = src[0];
	const struct cache_entry *tree = src[1];
	struct rev_info *revs = o->unpack_data;

	/*
	 * Unpack-trees generates a DF/conflict entry if
	 * there was a directory in the index and a tree
	 * in the tree. From a diff standpoint, that's a
	 * delete of the tree and a create of the file.
	 */
	if (tree == o->df_conflict_entry)
		tree = NULL;

	if (FUNC0(revs->diffopt.repo->index,
			  idx ? idx : tree,
			  &revs->prune_data, NULL)) {
		FUNC2(o, idx, tree);
		if (FUNC1(&revs->diffopt)) {
			o->exiting_early = 1;
			return -1;
		}
	}

	return 0;
}