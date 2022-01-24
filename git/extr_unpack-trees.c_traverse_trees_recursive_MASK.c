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
struct unpack_trees_options {int cache_bottom; int /*<<< orphan*/  src_index; int /*<<< orphan*/  merge; } ;
struct tree_desc {int dummy; } ;
struct traverse_info {unsigned long df_conflicts; int /*<<< orphan*/  pathlen; scalar_t__ mode; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  pathspec; struct traverse_info* prev; struct unpack_trees_options* data; } ;
struct object_id {int dummy; } ;
struct name_entry {struct object_id oid; scalar_t__ mode; int /*<<< orphan*/  pathlen; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MAX_UNPACK_TREES ; 
 int FUNC1 (int,unsigned long,struct name_entry*,struct traverse_info*) ; 
 scalar_t__ FUNC2 (struct name_entry*,struct name_entry*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,struct tree_desc*,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int FUNC5 (struct name_entry*,struct traverse_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct traverse_info*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct traverse_info*) ; 
 int /*<<< orphan*/  the_repository ; 
 int FUNC9 (int,int,int,struct traverse_info*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,struct tree_desc*,struct traverse_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct name_entry*) ; 

__attribute__((used)) static int FUNC12(int n, unsigned long dirmask,
				    unsigned long df_conflicts,
				    struct name_entry *names,
				    struct traverse_info *info)
{
	struct unpack_trees_options *o = info->data;
	int i, ret, bottom;
	int nr_buf = 0;
	struct tree_desc t[MAX_UNPACK_TREES];
	void *buf[MAX_UNPACK_TREES];
	struct traverse_info newinfo;
	struct name_entry *p;
	int nr_entries;

	nr_entries = FUNC1(n, dirmask, names, info);
	if (nr_entries > 0) {
		int pos = FUNC5(names, info);

		if (!o->merge || df_conflicts)
			FUNC0("Wrong condition to get here buddy");

		/*
		 * All entries up to 'pos' must have been processed
		 * (i.e. marked CE_UNPACKED) at this point. But to be safe,
		 * save and restore cache_bottom anyway to not miss
		 * unprocessed entries before 'pos'.
		 */
		bottom = o->cache_bottom;
		ret = FUNC9(pos, nr_entries, n, info);
		o->cache_bottom = bottom;
		return ret;
	}

	p = names;
	while (!p->mode)
		p++;

	newinfo = *info;
	newinfo.prev = info;
	newinfo.pathspec = info->pathspec;
	newinfo.name = p->path;
	newinfo.namelen = p->pathlen;
	newinfo.mode = p->mode;
	newinfo.pathlen = FUNC7(newinfo.pathlen, FUNC11(p), 1);
	newinfo.df_conflicts |= df_conflicts;

	/*
	 * Fetch the tree from the ODB for each peer directory in the
	 * n commits.
	 *
	 * For 2- and 3-way traversals, we try to avoid hitting the
	 * ODB twice for the same OID.  This should yield a nice speed
	 * up in checkouts and merges when the commits are similar.
	 *
	 * We don't bother doing the full O(n^2) search for larger n,
	 * because wider traversals don't happen that often and we
	 * avoid the search setup.
	 *
	 * When 2 peer OIDs are the same, we just copy the tree
	 * descriptor data.  This implicitly borrows the buffer
	 * data from the earlier cell.
	 */
	for (i = 0; i < n; i++, dirmask >>= 1) {
		if (i > 0 && FUNC2(&names[i], &names[i - 1]))
			t[i] = t[i - 1];
		else if (i > 1 && FUNC2(&names[i], &names[i - 2]))
			t[i] = t[i - 2];
		else {
			const struct object_id *oid = NULL;
			if (dirmask & 1)
				oid = &names[i].oid;
			buf[nr_buf++] = FUNC3(the_repository, t + i, oid);
		}
	}

	bottom = FUNC8(&newinfo);
	ret = FUNC10(o->src_index, n, t, &newinfo);
	FUNC6(&newinfo, bottom);

	for (i = 0; i < nr_buf; i++)
		FUNC4(buf[i]);

	return ret;
}