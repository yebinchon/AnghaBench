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
struct stat {int dummy; } ;
struct object_id {int dummy; } ;
struct index_state {struct cache_entry** cache; } ;
struct cache_entry {int ce_flags; int /*<<< orphan*/  ce_mode; int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int CE_VALID ; 
 int /*<<< orphan*/  FAST_WORKING_DIRECTORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct cache_entry const*) ; 
 scalar_t__ FUNC2 (struct cache_entry const*) ; 
 scalar_t__ FUNC3 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC4 (struct index_state*,struct cache_entry const*,struct stat*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct index_state*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC7 (struct object_id const*,int /*<<< orphan*/ *) ; 
 int FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (struct index_state*,char const*) ; 

__attribute__((used)) static int FUNC10(struct index_state *istate,
			       const char *name,
			       const struct object_id *oid,
			       int want_file)
{
	const struct cache_entry *ce;
	struct stat st;
	int pos, len;

	/*
	 * We do not read the cache ourselves here, because the
	 * benchmark with my previous version that always reads cache
	 * shows that it makes things worse for diff-tree comparing
	 * two linux-2.6 kernel trees in an already checked out work
	 * tree.  This is because most diff-tree comparisons deal with
	 * only a small number of files, while reading the cache is
	 * expensive for a large project, and its cost outweighs the
	 * savings we get by not inflating the object to a temporary
	 * file.  Practically, this code only helps when we are used
	 * by diff-cache --cached, which does read the cache before
	 * calling us.
	 */
	if (!istate->cache)
		return 0;

	/* We want to avoid the working directory if our caller
	 * doesn't need the data in a normal file, this system
	 * is rather slow with its stat/open/mmap/close syscalls,
	 * and the object is contained in a pack file.  The pack
	 * is probably already open and will be faster to obtain
	 * the data through than the working directory.  Loose
	 * objects however would tend to be slower as they need
	 * to be individually opened and inflated.
	 */
	if (!FAST_WORKING_DIRECTORY && !want_file && FUNC3(oid))
		return 0;

	/*
	 * Similarly, if we'd have to convert the file contents anyway, that
	 * makes the optimization not worthwhile.
	 */
	if (!want_file && FUNC9(istate, name))
		return 0;

	len = FUNC8(name);
	pos = FUNC5(istate, name, len);
	if (pos < 0)
		return 0;
	ce = istate->cache[pos];

	/*
	 * This is not the sha1 we are looking for, or
	 * unreusable because it is not a regular file.
	 */
	if (!FUNC7(oid, &ce->oid) || !FUNC0(ce->ce_mode))
		return 0;

	/*
	 * If ce is marked as "assume unchanged", there is no
	 * guarantee that work tree matches what we are looking for.
	 */
	if ((ce->ce_flags & CE_VALID) || FUNC1(ce))
		return 0;

	/*
	 * If ce matches the file in the work tree, we can reuse it.
	 */
	if (FUNC2(ce) ||
	    (!FUNC6(name, &st) && !FUNC4(istate, ce, &st, 0)))
		return 1;

	return 0;
}