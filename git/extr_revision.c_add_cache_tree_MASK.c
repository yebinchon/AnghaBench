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
struct TYPE_2__ {unsigned int flags; } ;
struct tree {TYPE_1__ object; } ;
struct strbuf {size_t len; int /*<<< orphan*/  buf; } ;
struct rev_info {int /*<<< orphan*/  repo; } ;
struct cache_tree_sub {struct cache_tree* cache_tree; int /*<<< orphan*/  name; } ;
struct cache_tree {scalar_t__ entry_count; int subtree_nr; struct cache_tree_sub** down; int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rev_info*,TYPE_1__*,char*,int,int /*<<< orphan*/ ) ; 
 struct tree* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,size_t) ; 

__attribute__((used)) static void FUNC4(struct cache_tree *it, struct rev_info *revs,
			   struct strbuf *path, unsigned int flags)
{
	size_t baselen = path->len;
	int i;

	if (it->entry_count >= 0) {
		struct tree *tree = FUNC1(revs->repo, &it->oid);
		tree->object.flags |= flags;
		FUNC0(revs, &tree->object, "",
					     040000, path->buf);
	}

	for (i = 0; i < it->subtree_nr; i++) {
		struct cache_tree_sub *sub = it->down[i];
		FUNC2(path, "%s%s", baselen ? "/" : "", sub->name);
		FUNC4(sub->cache_tree, revs, path, flags);
		FUNC3(path, baselen);
	}

}