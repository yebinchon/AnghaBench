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
struct unpack_trees_options {TYPE_2__* src_index; TYPE_1__* dir; } ;
struct object_id {int dummy; } ;
struct dir_struct {int /*<<< orphan*/  exclude_per_dir; } ;
typedef  struct cache_entry {char* name; int /*<<< orphan*/  oid; int /*<<< orphan*/  ce_mode; } const cache_entry ;
typedef  int /*<<< orphan*/  d ;
struct TYPE_4__ {int cache_nr; struct cache_entry const** cache; } ;
struct TYPE_3__ {int /*<<< orphan*/  exclude_per_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  CE_REMOVE ; 
 int /*<<< orphan*/  ERROR_NOT_UPTODATE_DIR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct unpack_trees_options*,struct cache_entry const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct unpack_trees_options*,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct cache_entry const*) ; 
 int /*<<< orphan*/  FUNC4 (struct cache_entry const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct cache_entry const*,struct unpack_trees_options*) ; 
 int FUNC7 (struct cache_entry const*,struct unpack_trees_options*) ; 
 int /*<<< orphan*/  FUNC8 (struct cache_entry const*,struct unpack_trees_options*) ; 
 int /*<<< orphan*/  FUNC9 (struct dir_struct*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC10 (struct object_id*) ; 
 scalar_t__ FUNC11 (struct object_id*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct dir_struct*,TYPE_2__*,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC13 (char*,char*,struct object_id*) ; 
 scalar_t__ FUNC14 (char*,char*,int) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct cache_entry const*,struct unpack_trees_options*) ; 
 scalar_t__ FUNC16 (struct cache_entry const*,struct unpack_trees_options*) ; 
 char* FUNC17 (char*,int,char*) ; 

__attribute__((used)) static int FUNC18(const struct cache_entry *ce,
				     struct unpack_trees_options *o)
{
	/*
	 * we are about to extract "ce->name"; we would not want to lose
	 * anything in the existing directory there.
	 */
	int namelen;
	int i;
	struct dir_struct d;
	char *pathbuf;
	int cnt = 0;

	if (FUNC0(ce->ce_mode)) {
		struct object_id oid;
		int sub_head = FUNC13(ce->name, "HEAD", &oid);
		/*
		 * If we are not going to update the submodule, then
		 * we don't care.
		 */
		if (!sub_head && FUNC11(&oid, &ce->oid))
			return 0;
		return FUNC15(sub_head ? NULL : FUNC10(&oid),
					      ce, o);
	}

	/*
	 * First let's make sure we do not have a local modification
	 * in that directory.
	 */
	namelen = FUNC3(ce);
	for (i = FUNC7(ce, o);
	     i < o->src_index->cache_nr;
	     i++) {
		struct cache_entry *ce2 = o->src_index->cache[i];
		int len = FUNC3(ce2);
		if (len < namelen ||
		    FUNC14(ce->name, ce2->name, namelen) ||
		    ce2->name[namelen] != '/')
			break;
		/*
		 * ce2->name is an entry in the subdirectory to be
		 * removed.
		 */
		if (!FUNC4(ce2)) {
			if (FUNC16(ce2, o))
				return -1;
			FUNC1(o, ce2, CE_REMOVE, 0);
			FUNC6(ce, o);
			FUNC8(ce2, o);
		}
		cnt++;
	}

	/*
	 * Then we need to make sure that we do not lose a locally
	 * present file that is not ignored.
	 */
	pathbuf = FUNC17("%.*s/", namelen, ce->name);

	FUNC9(&d, 0, sizeof(d));
	if (o->dir)
		d.exclude_per_dir = o->dir->exclude_per_dir;
	i = FUNC12(&d, o->src_index, pathbuf, namelen+1, NULL);
	if (i)
		return FUNC2(o, ERROR_NOT_UPTODATE_DIR, ce->name);
	FUNC5(pathbuf);
	return cnt;
}