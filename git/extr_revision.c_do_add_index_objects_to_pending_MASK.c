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
struct strbuf {int dummy; } ;
struct rev_info {int /*<<< orphan*/  repo; } ;
struct index_state {int cache_nr; scalar_t__ cache_tree; struct cache_entry** cache; } ;
struct cache_entry {int /*<<< orphan*/  name; int /*<<< orphan*/  ce_mode; int /*<<< orphan*/  oid; } ;
struct TYPE_2__ {unsigned int flags; } ;
struct blob {TYPE_1__ object; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct rev_info*,struct strbuf*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct rev_info*,TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct blob* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

__attribute__((used)) static void FUNC6(struct rev_info *revs,
					    struct index_state *istate,
					    unsigned int flags)
{
	int i;

	for (i = 0; i < istate->cache_nr; i++) {
		struct cache_entry *ce = istate->cache[i];
		struct blob *blob;

		if (FUNC0(ce->ce_mode))
			continue;

		blob = FUNC4(revs->repo, &ce->oid);
		if (!blob)
			FUNC3("unable to add index blob to traversal");
		blob->object.flags |= flags;
		FUNC2(revs, &blob->object, "",
					     ce->ce_mode, ce->name);
	}

	if (istate->cache_tree) {
		struct strbuf path = STRBUF_INIT;
		FUNC1(istate->cache_tree, revs, &path, flags);
		FUNC5(&path);
	}
}