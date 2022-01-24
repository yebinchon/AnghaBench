#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  find_copies_harder; } ;
struct TYPE_7__ {TYPE_1__ flags; } ;
struct rev_info {TYPE_3__ diffopt; int /*<<< orphan*/  dense_combined_merges; scalar_t__ combine_merges; } ;
struct object_id {int dummy; } ;
struct combine_diff_path {char* path; unsigned int mode; TYPE_2__* parent; int /*<<< orphan*/  oid; int /*<<< orphan*/ * next; } ;
struct combine_diff_parent {int dummy; } ;
struct cache_entry {unsigned int ce_mode; int /*<<< orphan*/  name; struct object_id const oid; } ;
struct TYPE_6__ {unsigned int mode; int /*<<< orphan*/  oid; void* status; } ;

/* Variables and functions */
 void* DIFF_STATUS_MODIFIED ; 
 int FUNC0 (struct cache_entry const*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,unsigned int,unsigned int,struct object_id const*,struct object_id const*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct rev_info*,char*,struct cache_entry const*,struct object_id const*,int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct combine_diff_path*) ; 
 scalar_t__ FUNC5 (struct cache_entry const*,struct object_id const**,unsigned int*,int,int,unsigned int*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct object_id const*) ; 
 scalar_t__ FUNC11 (struct object_id const*,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC12 (struct combine_diff_path*,int,int /*<<< orphan*/ ,struct rev_info*) ; 
 struct combine_diff_path* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct rev_info *revs,
			 const struct cache_entry *old_entry,
			 const struct cache_entry *new_entry,
			 int report_missing,
			 int cached, int match_missing)
{
	unsigned int mode, oldmode;
	const struct object_id *oid;
	unsigned dirty_submodule = 0;

	if (FUNC5(new_entry, &oid, &mode, cached, match_missing,
			  &dirty_submodule, &revs->diffopt) < 0) {
		if (report_missing)
			FUNC3(revs, "-", old_entry,
					     &old_entry->oid, 1, old_entry->ce_mode,
					     0);
		return -1;
	}

	if (revs->combine_merges && !cached &&
	    (!FUNC11(oid, &old_entry->oid) || !FUNC11(&old_entry->oid, &new_entry->oid))) {
		struct combine_diff_path *p;
		int pathlen = FUNC0(new_entry);

		p = FUNC13(FUNC1(2, pathlen));
		p->path = (char *) &p->parent[2];
		p->next = NULL;
		FUNC7(p->path, new_entry->name, pathlen);
		p->path[pathlen] = 0;
		p->mode = mode;
		FUNC9(&p->oid);
		FUNC8(p->parent, 0, 2 * sizeof(struct combine_diff_parent));
		p->parent[0].status = DIFF_STATUS_MODIFIED;
		p->parent[0].mode = new_entry->ce_mode;
		FUNC10(&p->parent[0].oid, &new_entry->oid);
		p->parent[1].status = DIFF_STATUS_MODIFIED;
		p->parent[1].mode = old_entry->ce_mode;
		FUNC10(&p->parent[1].oid, &old_entry->oid);
		FUNC12(p, 2, revs->dense_combined_merges, revs);
		FUNC4(p);
		return 0;
	}

	oldmode = old_entry->ce_mode;
	if (mode == oldmode && FUNC11(oid, &old_entry->oid) && !dirty_submodule &&
	    !revs->diffopt.flags.find_copies_harder)
		return 0;

	FUNC2(&revs->diffopt, oldmode, mode,
		    &old_entry->oid, oid, 1, !FUNC6(oid),
		    old_entry->name, 0, dirty_submodule);
	return 0;
}