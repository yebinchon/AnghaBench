#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_13__ {scalar_t__ path; scalar_t__ file_size; int /*<<< orphan*/  id; int /*<<< orphan*/  mode; } ;
typedef  TYPE_1__ git_index_entry ;
struct TYPE_14__ {int /*<<< orphan*/  tree; } ;
typedef  TYPE_2__ git_index ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_INDEX ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 size_t UINT32_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC8 (TYPE_1__**,TYPE_2__*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_2__*,TYPE_1__**,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

int FUNC12(
    git_index *index, const git_index_entry *source_entry,
    const void *buffer, size_t len)
{
	git_index_entry *entry = NULL;
	int error = 0;
	git_oid id;

	FUNC1(index && source_entry->path);

	if (FUNC0(index) == NULL)
		return FUNC2(-1,
			"could not initialize index entry. "
			"Index is not backed up by an existing repository.");

	if (!FUNC11(source_entry->mode)) {
		FUNC4(GIT_ERROR_INDEX, "invalid filemode");
		return -1;
	}

	if (len > UINT32_MAX) {
		FUNC4(GIT_ERROR_INDEX, "buffer is too large");
		return -1;
	}

	if (FUNC8(&entry, index, source_entry) < 0)
		return -1;

	error = FUNC3(&id, FUNC0(index), buffer, len);
	if (error < 0) {
		FUNC9(entry);
		return error;
	}

	FUNC5(&entry->id, &id);
	entry->file_size = (uint32_t)len;

	if ((error = FUNC10(index, &entry, 1, true, true, true)) < 0)
		return error;

	/* Adding implies conflict was resolved, move conflict entries to REUC */
	if ((error = FUNC7(index, entry->path)) < 0 && error != GIT_ENOTFOUND)
		return error;

	FUNC6(index->tree, entry->path);
	return 0;
}