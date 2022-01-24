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
struct cache_tree_sub {struct cache_tree* cache_tree; int /*<<< orphan*/  name; int /*<<< orphan*/  namelen; } ;
struct cache_tree {scalar_t__ entry_count; int subtree_nr; struct cache_tree_sub** down; int /*<<< orphan*/  oid; } ;
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int PATH_MAX ; 
 struct cache_tree_sub* FUNC0 (struct cache_tree*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_tree*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct cache_tree *it,
			   struct cache_tree *ref,
			   const char *pfx)
{
	int i;
	int errs = 0;

	if (!it || !ref)
		/* missing in either */
		return 0;

	if (it->entry_count < 0) {
		/* invalid */
		FUNC1(it, pfx, "");
		FUNC1(ref, pfx, "#(ref) ");
	}
	else {
		FUNC1(it, pfx, "");
		if (!FUNC2(&it->oid, &ref->oid) ||
		    ref->entry_count != it->entry_count ||
		    ref->subtree_nr != it->subtree_nr) {
			/* claims to be valid but is lying */
			FUNC1(ref, pfx, "#(ref) ");
			errs = 1;
		}
	}

	for (i = 0; i < it->subtree_nr; i++) {
		char path[PATH_MAX];
		struct cache_tree_sub *down = it->down[i];
		struct cache_tree_sub *rdwn;

		rdwn = FUNC0(ref, down->name);
		FUNC3(path, sizeof(path), "%s%.*s/", pfx, down->namelen, down->name);
		if (FUNC4(down->cache_tree, rdwn->cache_tree, path))
			errs = 1;
	}
	return errs;
}