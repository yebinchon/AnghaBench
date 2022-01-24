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
struct index_state {int /*<<< orphan*/  dir_hash; } ;
struct dir_entry {int namelen; struct dir_entry* parent; int /*<<< orphan*/  ent; } ;
struct cache_entry {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dir_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct dir_entry* FUNC1 (struct index_state*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  name ; 

__attribute__((used)) static struct dir_entry *FUNC6(struct index_state *istate,
		struct cache_entry *ce, int namelen)
{
	/*
	 * Throw each directory component in the hash for quick lookup
	 * during a git status. Directory components are stored without their
	 * closing slash.  Despite submodules being a directory, they never
	 * reach this point, because they are stored
	 * in index_state.name_hash (as ordinary cache_entries).
	 */
	struct dir_entry *dir;

	/* get length of parent directory */
	while (namelen > 0 && !FUNC4(ce->name[namelen - 1]))
		namelen--;
	if (namelen <= 0)
		return NULL;
	namelen--;

	/* lookup existing entry for that directory */
	dir = FUNC1(istate, ce->name, namelen);
	if (!dir) {
		/* not found, create it and add to hash table */
		FUNC0(dir, name, ce->name, namelen);
		FUNC3(&dir->ent, FUNC5(ce->name, namelen));
		dir->namelen = namelen;
		FUNC2(&istate->dir_hash, &dir->ent);

		/* recursively add missing parent directories */
		dir->parent = FUNC6(istate, ce, namelen);
	}
	return dir;
}