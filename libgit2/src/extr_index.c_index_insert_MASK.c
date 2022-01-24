#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct entry_internal {size_t pathlen; } ;
struct TYPE_24__ {int mode; scalar_t__ path; int /*<<< orphan*/  id; int /*<<< orphan*/  flags_extended; } ;
typedef  TYPE_1__ git_index_entry ;
struct TYPE_25__ {int dirty; int /*<<< orphan*/  entries; } ;
typedef  TYPE_2__ git_index ;

/* Variables and functions */
 int GIT_FILEMODE_COMMIT ; 
 int /*<<< orphan*/  GIT_INDEX_ENTRY_UPTODATE ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 int FUNC4 (TYPE_2__*,TYPE_1__*,size_t,int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__**,size_t*,TYPE_1__**,TYPE_2__*,TYPE_1__*) ; 
 int FUNC14 (TYPE_2__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  index_no_dups ; 
 int /*<<< orphan*/  FUNC15 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 

__attribute__((used)) static int FUNC17(
	git_index *index,
	git_index_entry **entry_ptr,
	int replace,
	bool trust_path,
	bool trust_mode,
	bool trust_id)
{
	git_index_entry *existing, *best, *entry;
	size_t path_length, position;
	int error;

	FUNC2(index && entry_ptr);

	entry = *entry_ptr;

	/* Make sure that the path length flag is correct */
	path_length = ((struct entry_internal *)entry)->pathlen;
	FUNC10(entry, path_length);

	/* This entry is now up-to-date and should not be checked for raciness */
	entry->flags_extended |= GIT_INDEX_ENTRY_UPTODATE;

	FUNC9(&index->entries);

	/*
	 * Look if an entry with this path already exists, either staged, or (if
	 * this entry is a regular staged item) as the "ours" side of a conflict.
	 */
	FUNC13(&existing, &position, &best, index, entry);

	/* Update the file mode */
	entry->mode = trust_mode ?
		FUNC5(entry->mode) :
		FUNC14(index, best, entry->mode);

	/* Canonicalize the directory name */
	if (!trust_path && (error = FUNC3(index, entry, best)) < 0)
		goto out;

	/* Ensure that the given id exists (unless it's a submodule) */
	if (!trust_id && FUNC0(index) &&
	    (entry->mode & GIT_FILEMODE_COMMIT) != GIT_FILEMODE_COMMIT) {

		if (!FUNC6(FUNC0(index), &entry->id,
					  FUNC7(entry->mode))) {
			error = -1;
			goto out;
		}
	}

	/* Look for tree / blob name collisions, removing conflicts if requested */
	if ((error = FUNC4(index, entry, position, replace)) < 0)
		goto out;

	/*
	 * If we are replacing an existing item, overwrite the existing entry
	 * and return it in place of the passed in one.
	 */
	if (existing) {
		if (replace) {
			FUNC11(existing, entry);

			if (trust_path)
				FUNC15((char *)existing->path, entry->path, FUNC16(entry->path));
		}

		FUNC12(entry);
		*entry_ptr = existing;
	} else {
		/*
		 * If replace is not requested or no existing entry exists, insert
		 * at the sorted position.  (Since we re-sort after each insert to
		 * check for dups, this is actually cheaper in the long run.)
		 */
		if ((error = FUNC8(&index->entries, entry, index_no_dups)) < 0)
			goto out;

		FUNC1(index, entry, error);
	}

	index->dirty = 1;

out:
	if (error < 0) {
		FUNC12(*entry_ptr);
		*entry_ptr = NULL;
	}

	return error;
}